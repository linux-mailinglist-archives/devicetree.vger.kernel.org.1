Return-Path: <devicetree+bounces-178438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663EABBD1A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13B113AD266
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9CE7275119;
	Mon, 19 May 2025 11:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="sTzvXOOs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17821FC0F3
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747655946; cv=none; b=IKxjWHM58lfBRes6qbguoMv8HvbjV+agjCZygeHbyEyN7mgkTrup7FyMVA9/FGk35oUa3dhh//HTv2lSh4ejv6VNKZ+lKpBiB5yv+D0mF+d3yFekDAxmYRrRuWZ86sniqKF9+SMnkD3aX0PckO6fRmdFvKeDHTwG2j2vra3/a9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747655946; c=relaxed/simple;
	bh=pQ7lUEjc77WIXxsBxUCJoRHQpI4yW29KZ9UQeBHu6rA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=tyK7upTaG5tC7KrJAkKcgJP8pXXdaeOZvpYcjVYCab2xc5ebrYSXX1enqd8rA4RSVQovUehzBT0zmHM5jBkeDvgi5YkNDLBrNTKsE/PDTgZ8F/Obd66UyFuM8V4r3Xewae1A/ZLIoMdSzEmE7dKrcYptwRbmTC6JjlJyohuNwMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=sTzvXOOs; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54JAPBUH010261;
	Mon, 19 May 2025 13:58:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	VhjPX55qNqqjOxzpxaedZHl4L7VXx1ilpZg/AhTGduY=; b=sTzvXOOswe4ROvPG
	wsi9pzxc8l7SmQtEn1cEs8UoqqJbLbbcZ1xMECJbiq1S3y0RA8viWW7igJfs4KlW
	NQ8v1y/7DTwtB5EfpKOR3ECofwz8Jt0GqCb3pERCqHa36EAXZqdmKzPFp1PgG/QF
	mGIirgK2io2f+MnsimmDdwRpapmyu1M3a8v/L3G85d4lMzNJOzW+R9/jO1o/37TE
	s6XFHANiQhMqJwyt/3C0sDM5Qpt10E4Cc2LcpAxcI3Dv14swyuUQb6/BotJtw7gx
	yfOHwbuoXUrItpHiKj4LwLP2P6XNIbmoFN26X+MsUbTC5W4n6CRrm3+nS+PrHEbi
	tjjGxQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 46pfk9ybbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 May 2025 13:58:40 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 38C8F4004A;
	Mon, 19 May 2025 13:57:39 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C7E748AE37A;
	Mon, 19 May 2025 13:57:02 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 19 May
 2025 13:57:02 +0200
Message-ID: <d783a0cb-9b5f-4757-bba2-ef425c79f6c7@foss.st.com>
Date: Mon, 19 May 2025 13:57:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for
 constant mac-addresses
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>
References: <20250328171406.3307778-2-u.kleine-koenig@baylibre.com>
 <xvhstvgs5bpfebeolozdbxh2empviijqq6hg2k2kuav5xykpqw@a3jgkrqzj4xm>
 <k5sznrkn6shjn3d5uj675sktkgwf3aivfr7hchialln433ktjs@u42bfyo7tnej>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <k5sznrkn6shjn3d5uj675sktkgwf3aivfr7hchialln433ktjs@u42bfyo7tnej>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_05,2025-05-16_03,2025-03-28_01

Hi Uwe

On 5/16/25 11:50, Uwe Kleine-König wrote:
> Hello,
> 
> On Thu, Apr 24, 2025 at 05:07:00PM +0200, Uwe Kleine-König wrote:
>> On Fri, Mar 28, 2025 at 06:14:05PM +0100, Uwe Kleine-König wrote:
>>> The efuse device tree description already has the two labels pointing to
>>> the efuse nodes that specify the mac-addresses to be used. Wire them up
>>> to the ethernet nodes. This is enough to make barebox pick the right
>>> mac-addresses and pass them to Linux.
>>>
>>> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
>>
>> I wonder if this patch is on someone's radar?!
> 
> I still wonder. Is this just due to -ENOTIME for the maintainers, or are
> there doubts about this patch?

No doubt just my fault as this patch went off my radar. Sorry.

Applied on stm32-next.

Thanks
Alex

> 
> Best regards
> Uwe

