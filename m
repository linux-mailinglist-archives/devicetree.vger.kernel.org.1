Return-Path: <devicetree+bounces-56817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F38289A92A
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 07:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88E3F1C21078
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 05:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A418E20DC8;
	Sat,  6 Apr 2024 05:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="RU30JmeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta232.mxroute.com (mail-108-mta232.mxroute.com [136.175.108.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9D11DA53
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 05:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712381342; cv=none; b=bZAF1T9N5tDPGUh88kcnCpCUfbXtwe+zHAK1VqUXAqfqh18/RbBqWLDBuBhhx/+KeJL3kkWLZF5WabLVRcExcjee1anxKd+rDXkUinEhTqn8Mjg7W0kxWeZYXfZp/nTzCmN/fw75lifMYzcRyhHlm4wsGf6+jp2E8LKuV1VFeyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712381342; c=relaxed/simple;
	bh=XvGGiaKjAp46vAegdWKN0fVnxmrfC1H1J6zN0QKFTrw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cEeoKRRnSf26C7FfaqlsdMWahQ1OriGTG6ifX8sOH0cHfcuaeqDKB+ia4Jcb87eaO/0+YUIXGiS/8/ED5fsS53tH0YvzmpukXv/J6qxXaVkTOjs2+Myslbn3zT87dEUqIO8KQpZWlDx1kqZTl/37RPzLYfNcJ7y8o0feYDujfcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=RU30JmeZ; arc=none smtp.client-ip=136.175.108.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta232.mxroute.com (ZoneMTA) with ESMTPSA id 18eb1dce0660003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sat, 06 Apr 2024 05:23:46 +0000
X-Zone-Loop: e61804734790573622bb9356e71c9ef5925e52782083
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZmuhkTALxM8lf0cfAvP+7dJ0PJ20DaBe8z1ii1wZ960=; b=RU30JmeZw8NfKZujRbkVuhHZc7
	Wdnson/TB15EBa0BLASqHxyQNxUo4sK/fpaxMJHvihEmZLBTATxOJV2BXo3NfWsttfvLKNJJWHRsE
	CeKtDYAyQP6Ppj2blTGdGqOtuua7XHqeODzZls2nZUb2ZPnnyrjg5+IiMbLf1veOem4ZcIE6FulIa
	cFzdxpC9SCQ77SbyAmHMfGhhZKRZBLnK2b3qt+pu5WL3NOdQhoD4Sx3PAD7JyD1tpsiBRFs/Iw5M2
	WYtRtpD/Nl5uPmjzU7acJ0j6ti7PD2GE0ijqjph2h/9H2Iu3mWHFgIpfSZoj8eNzC+j+RW3r4jlbG
	IjfS1GLw==;
Message-ID: <bbf7c8c3-ca67-43a1-88d0-199cc9299c6d@luigi311.com>
Date: Fri, 5 Apr 2024 23:23:42 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/25] media: i2c: imx258: Add regulator control
To: Pavel Machek <pavel@ucw.cz>
Cc: linux-media@vger.kernel.org, dave.stevenson@raspberrypi.com,
 jacopo.mondi@ideasonboard.com, mchehab@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 sakari.ailus@linux.intel.com, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20240403150355.189229-1-git@luigi311.com>
 <20240403150355.189229-6-git@luigi311.com> <Zg2jgmmqw0nXDYcF@duo.ucw.cz>
Content-Language: en-US
From: Luis Garcia <git@luigi311.com>
In-Reply-To: <Zg2jgmmqw0nXDYcF@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: git@luigi311.com

On 4/3/24 12:44, Pavel Machek wrote:
> Hi!
> 
>> The device tree bindings define the relevant regulators for the
>> sensor, so update the driver to request the regulators and control
>> them at the appropriate times.
> 
>> @@ -995,9 +1007,19 @@ static int imx258_power_on(struct device *dev)
>>  	struct imx258 *imx258 = to_imx258(sd);
>>  	int ret;
>>  
>> +	ret = regulator_bulk_enable(IMX258_NUM_SUPPLIES,
>> +				    imx258->supplies);
>> +	if (ret) {
> 
> Will this make it fail for all current users?
> 
> Best regards,
> 								Pavel
> 								

It shouldn't affect current users as this was added in by dave for
a completely different sensor and it still works on my ppp. Looking
at the dmesg for imx258 it does reference the regulators that the
ppp doesnt have but it still works.

