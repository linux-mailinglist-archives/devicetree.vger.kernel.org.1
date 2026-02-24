Return-Path: <devicetree+bounces-267727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G/6IvRFnWmoOAQAu9opvQ
	(envelope-from <devicetree+bounces-267727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:32:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F174182726
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44FF4308C5B7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F500288522;
	Tue, 24 Feb 2026 06:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="REB79/Ty";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EvSPeMDD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0682E6CA8
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771914716; cv=none; b=fUmKchJ5mPnfK4+tCRbmLA8x1S96u+vNsi6v1T4fOT3804uvtwZBBPrhDw3RoTey20Xgq6tG8ZBqk4fehR+tL4t7/mpUKwT9LBhEtMWZECRoyA/2zDJs12LsSvQq9sd/0ioOG4a8adj63N38cit3Uarj6M18dU3Ruq43voLL5Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771914716; c=relaxed/simple;
	bh=T3nH5FM/Pu6AUZ04lMPdaAT3uQkn5bL7NBMvAgq5V48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLSP9pZKwVHJTWuAe7hhTwY4/j1xzq2CwexDa/nEKXjmtXXGIOE6c+iGu9gY3pJEbxX6FNcY9fezTCvKC5oAZEv+lMbkFPTDSpXlo8UxiMmaFLj2FcJ8/CJlucortSkLQsnITVISocAFaR5yVKLhjBoojxZz21XAq3ZLK4iZe+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=REB79/Ty; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EvSPeMDD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4Lf9C2570070
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CbD57KvOVMFD3V1n/xjvFIE9
	X9cvT4wMbpskcqH7IqI=; b=REB79/TyQ/lQNOhbdNjiQ/Vi2U3BaTJqm1ie5Pfl
	DryJpFK8LmA9KzXWLrD+qE6rFE2Np4Xj6RQHal1pWhFRG1tA1LNd/rYwojGcbErM
	8JRxfr1fFT6qxa4GjD5vZKL6pG7pNDK+q3vvhCSXGnNFxL8yhtAyzUbPNkjRyG2z
	EG5B6C8BTTBvmMo+wDmjFuZgNkBamO4fEpMJ1HOhfTS+fxxqQ26hAjuJuHZ16PWb
	hBCqMRcZxK4jqY5qhgcjfO8GtWurKxgNeVFkqZ1y+woU3ECGN0+c10ouH+caOB7y
	Rp99Ou4gcd44aVZ9nOt+mwTrYh2mF2p3hpOh2UDP3OW69A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y35t5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:31:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3a2eb984so2460628685a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771914713; x=1772519513; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CbD57KvOVMFD3V1n/xjvFIE9X9cvT4wMbpskcqH7IqI=;
        b=EvSPeMDDljrLLPEw8NRdT4n9n95cmPGtGPoflW9vHKByQq2NjS1CEG9mLTOf1L9Gn5
         eDikSRvJUDXlmdPEfnMspj3wvbcwF7l6qaq46JQ18wnfuFKiJ/9IImQM/+Gy4pJmA498
         hveIhTxBt6i7UiFrwURNRt4SI4TG0DBPsZJyrJSfEPVCaYRbrGDaYdftq49JyM1DJMPN
         LblzdVOVK3WIcsz6lDxIDQDLkrON/asWYNI9Ttb+JYMQXBxzcZjNNzxelsEKfgOuOm/H
         iKgBAFMUiZ41+MSM7lrlzxdLpjVJvJbs5RAUeP4p9dnYXrZ/+UN7Qb69LzzQiW80RDSd
         sgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771914713; x=1772519513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CbD57KvOVMFD3V1n/xjvFIE9X9cvT4wMbpskcqH7IqI=;
        b=XSixJuqlTadangVQ2rYdWVgvdf4TZ83WRqdwCDXdOjXIgRYvGfdS4+G2s3kJ1ZeArD
         EFcvSM752ccr+EHbUw2qN0WXqfQbu1xhHPUG7ksHRgIC/ZZC3UFie3mGAr9rm6HEvClj
         fzsIAjs1aIA/qIsQTR8C+rHyHTkE89401iViKvOBTjY3O7baSrJHFgYOzScosICl3Pfd
         7D/0FiCAMmY6VaBUKNs80kYmu96FQhczCbeHWuvuEnqsSgRTl7uIzP3yjXzZEFcTKxyr
         qdXC+Lxu/dnEPfqHk0yH/95y7KHx5n9XnpwdU7xt0/xTNHlxruikG0T1agmXGylv9Dbs
         ZXHA==
X-Forwarded-Encrypted: i=1; AJvYcCW2ABSuK/vzFwUwewauOglOK/glJsGHJbF94RXdTqFv24u+Tl/86nzwMhqE2LnRGgqzEFZsDKcuUyyW@vger.kernel.org
X-Gm-Message-State: AOJu0YymJhg3XtDAqbaSwzHaAVoCIufOLT1aOJrZfhkEn37U7P2gcpfk
	2vm7rY02k6zCLrXYOQcGuBKkaYWn+0+qrFDM3oWpAoaPeZgMdovmnv+uDl9En+PtQp3SBiKH8Br
	1smaSj6PNgehF5ekIkCrjvsHt9sWQvBoEdYHpNoKhD4vqV3tFUy1C1H6rpv7xryTI
X-Gm-Gg: AZuq6aKRPS3XBqddUHIj0xPQQ13jZM+XDNWl/ppJnzodE0fTvPQ92qgQ/bptLBhYkaf
	QlCyTXU1F5ELXOK8HjxIIZw0E2I4Bb2kFpWpx/RcjxL+zryfYdzjVA0gTOluG1Ewu9hquCbcdN+
	EKqOrpTKO2HdcI/IumTmekk2dyqb9K5L5Bp7JGDKqEqW/JwjCdf4iCFSJ+ZHBfk6+GgM/njDl1t
	9E3yl/Cp7hf1yr9tsb6dYSzQECuT6ner+d5DRh1KkG7O1/4KDc1XYl+1wGi2MhdjySfVwRNcQmc
	LaBtIaDQfSyctCfoOV7ti5CiYGe8kbAnukfDXj/55zECqaLaquMFFaA5TfNcA0TCbn4xiBp/s2l
	O4OyRAV5C0zmb4t34Ltb3ghBGm2Vq0BuPkWr+i7Xa/4i/l5rSVizjOtq6ZqKEFyf2C8MqdTd+la
	UR+EXyXXIpHjblkL1FE2Mi8FJEClxDmc2Js9w=
X-Received: by 2002:a05:620a:390a:b0:8cb:7b27:9336 with SMTP id af79cd13be357-8cb8c9cf508mr1406130385a.5.1771914713372;
        Mon, 23 Feb 2026 22:31:53 -0800 (PST)
X-Received: by 2002:a05:620a:390a:b0:8cb:7b27:9336 with SMTP id af79cd13be357-8cb8c9cf508mr1406126685a.5.1771914712795;
        Mon, 23 Feb 2026 22:31:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7af19d4sm18218211fa.42.2026.02.23.22.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 22:31:50 -0800 (PST)
Date: Tue, 24 Feb 2026 08:31:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hermes.wu@ite.com.tw
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw,
        Kenneth.Hung@ite.com.tw, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Add ITE IT6162 MIPI DSI to HDMI bridge driver
Message-ID: <jencn5ukz4qce277zbw2gakyuuqvqknpsxi3yqhgyewnkxickr@y4e53ocb62or>
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA1NCBTYWx0ZWRfX1XDLEYk9h+CL
 9Eb8BTelQEBSO2B9NvjNBzqCATSgHuUQXRhj7fSBU81j6X9wtIyz7bhQLeIOuilCbxMwmgz9CNI
 gEYoIq78UQoOVrs7CSUJO/Ty/0Wr4o2Zhg+5Pn1I8CHZ5yqed272B33ADO/cNLaevOWGzZ7nlek
 E12m5oLVb4h1tqTkL3AOuWfjcNmh6W1oO/HmtlhkVoShGM4Gtq0CkRfxwcqJUZjsTj0PWiAU1/1
 aN5l4OO90v8kPiZ/Q5MGNX69tTm6edXfo/LPZuCQmq1aDvJl5VnpNjHHJomIaxv+FAbZnfHLDX1
 IgPG3WJrUAWqSah2/jzEzjshyhdTscyQexPDahLmnFO3O14pav/JDfyGm8ZvzdaY2NDA149eAB/
 cmVGTjNL4/OeqRN1ZqvWmgksToQWxZN9vOQ13SqHDv4pb9kQi8u12KRjo8N35g2HFZEhkhCuIsz
 i/FVnbaK19Z+j5M/KQw==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699d45d9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=Ns9eNvu6AAAA:8
 a=nHe1MMW0IAeXxdot7wcA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=LZLx1i01EnjtqRv10NxV:22
X-Proofpoint-GUID: qyHDbKqqX5M-pmITBMeZr26QBvBgGlCH
X-Proofpoint-ORIG-GUID: qyHDbKqqX5M-pmITBMeZr26QBvBgGlCH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267727-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ite.com.tw:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0F174182726
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:20:44PM +0800, Hermes Wu via B4 Relay wrote:
> This patch series adds support for the ITE IT6162 MIPI DSI to HDMI
> bridge chip. The IT6162 is an I2C-controlled bridge that receives MIPI
> DSI input and outputs HDMI signals.
> 
> The device supports the following configurations:
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> This series introduces:
>   - dt-bindings: Add YAML binding document for ITE IT6162
>   - drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge driver
>   - MAINTAINERS: Add entry for ITE IT6162 bridge driver
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
> Hermes Wu (3):
>       drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge driver
>       dt-bindings: display: bridge: Add ITE IT6162 MIPI DSI to HDMI bridge
>       MAINTAINERS: Add entry for ITE IT6162 MIPI DSI to HDMI bridge driver

Please change the order: the bindings should come as a first patch. Also
please squash MAINTAINERS entry into the driver patch.

> 
>  .../bindings/display/bridge/ite,it6162.yaml        |  156 ++
>  MAINTAINERS                                        |    8 +
>  drivers/gpu/drm/bridge/Kconfig                     |   17 +
>  drivers/gpu/drm/bridge/Makefile                    |    1 +
>  drivers/gpu/drm/bridge/ite-it6162.c                | 1876 ++++++++++++++++++++
>  5 files changed, 2058 insertions(+)
> ---
> base-commit: 38feb171b3f92d77e8061fafb5ddfffc2c13b672
> change-id: 20260223-upstream-6162-3751e78dfcad
> 
> Best regards,
> -- 
> Hermes Wu <Hermes.wu@ite.com.tw>
> 
> 

-- 
With best wishes
Dmitry

