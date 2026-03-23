Return-Path: <devicetree+bounces-279171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLgDGCtEwWnpRwQAu9opvQ
	(envelope-from <devicetree+bounces-279171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 14:46:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2D02F33E7
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 14:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B85F7301D57F
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 13:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5073E3AD50E;
	Mon, 23 Mar 2026 13:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZUuaK39"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD93ACEF0;
	Mon, 23 Mar 2026 13:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774272841; cv=none; b=dwaRu5SCK0BuC6PuV0aMNr7iTdb5cl4q45BPyXTiTCUgYXe9yPO+4txdEXV/vpJKiQvtekbBSq/ovBSvdPAdsafaXcfRAXTv0ZZIIi3y2avn7ne77ANtwQOKQvJywPUmwjtPYk8CYLJ7KQE5/UUdZI1uGmxqZZEWF4BRANNZSiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774272841; c=relaxed/simple;
	bh=s3ZZzmTnN3DfsDfKAPpFQV9dhh5BMKGJaKPYZIIk5Ss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MjNHdiVXO7FQ0lLIQBMAAa6xhQO6Gzgax9WkVsh35A/JK9jyZnrZzyHLLABBYhN0tYXUmjr15yu2wI61zpl6WbGXfQmv2zPSR7Zz363k4fE5oQTHaMw42kzHpGEU0wJAS5Waiya0X0c4wIyavx52eXjgCF/c0Hi+T3i98/ebbeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZUuaK39; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C79D7C4CEF7;
	Mon, 23 Mar 2026 13:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774272840;
	bh=s3ZZzmTnN3DfsDfKAPpFQV9dhh5BMKGJaKPYZIIk5Ss=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RZUuaK39zuixo62ekoaDqQr7afQM9A4CSIkEcBWxxRGdEhENpD8LWEDCjCR+84h7G
	 ivekNZRRI9pYgPYpx5oXCpweLx6v0OoYSzyp00m/cVOXEry4+h8jxFCRkmkUWfyHBW
	 jG5WDV/wG2A7qhRb14TVidOA9AlH39rdU2iUJtNB3kIEq36B5MGso1h+D1m5CQQOei
	 2eFIrbwq52gJmevgCsH4Ri03fCCo1O+yVVRHPlpIVTR7TiBaCAmuaqMBq1AXchFhSy
	 jrEyjv0cMN6wIw5XmzMDYTLr18n5mOVh5MXzU6jhXx+HYnyH7zSCgFvfTyR0xVnG/8
	 88gKwSmCmJGYg==
Message-ID: <34038c03-5416-487c-9b61-f37494247ea0@kernel.org>
Date: Mon, 23 Mar 2026 13:33:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/3] arm64: dts: qcom: qcm2290: Add CAMSS OPE node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, vladimir.zapolskiy@linaro.org,
 laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
 robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 johannes.goede@oss.qualcomm.com, mchehab@kernel.org
References: <20260323125824.211615-1-loic.poulain@oss.qualcomm.com>
 <20260323125824.211615-4-loic.poulain@oss.qualcomm.com>
 <TePvvgDVDb_k2QvKDX81eBWL8NGBfBgyF-Io4NhyhIFdXZPUV2lnWOs2t2DlDb_3bOLmk-QnfJsRA-dG6Ey0cg==@protonmail.internalid>
 <76edd04d-7bd1-4b42-bea1-79f4b149c0bb@oss.qualcomm.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <76edd04d-7bd1-4b42-bea1-79f4b149c0bb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279171-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bod@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,5c42400:email]
X-Rspamd-Queue-Id: 5A2D02F33E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 23/03/2026 13:24, Konrad Dybcio wrote:
> +		isp_ope: isp@5c42400 {

ope@5c42400 isp@ is already used.

---
bod

