Return-Path: <devicetree+bounces-251193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77336CF0024
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 14:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E096A301355B
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 13:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388A1272813;
	Sat,  3 Jan 2026 13:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kCQjIuqc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OxrSFIzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EA82135CE
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 13:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767446746; cv=none; b=B4zqtTEnRW+C+GnGZL9rSebqRn82EhaQbYOLYKuLH+7Xt+dg6RLqj0b3X7VV64tioqvK21/ugDHIISrOhWldvtU4N7gVEoLnBzOGNFHsnpWrNp3wPBM2J7ZkKO2QMgr25/Y7Nt1UFQN65aR3RSkMzmzJj2acS0zRaS+yBeMTa1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767446746; c=relaxed/simple;
	bh=LQmqP+PBzrDKq4m+H169wGv0x65KZxIcSYNeQW8UIJM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSmHfC7JXzohRuxq3CUf8ovb406EDpLVWgmgb1VnIhxeRBpvh0zrnaG5fzeFBh17KLeZXenQqIotpDqCalv1Gd5e+HPk3v3L7E0rf1JlxOXmLa8w0UO1qCDO+LeBr+j3oBrjTrq1WUCZ5sXPrPxmIq0pLvWMgFBf808DD3f4h6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kCQjIuqc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OxrSFIzZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6038Qldd2747999
	for <devicetree@vger.kernel.org>; Sat, 3 Jan 2026 13:25:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1jHSeujvPi+ypll6UerzG/c5
	KTRwW7mhZxetg25hqAg=; b=kCQjIuqcuv8I1lEIaZB51dL8FPSebj8XZ1I3fhS4
	yz++sl3u7rGqbzz8DQGWa2L8/JaEQeSyxE6utN1U4FSoXIny34+M+wCd/KjpM09R
	wZDQYIuEFcFDFDy5SBaR4LdC1X/gkK90lQZTQr7D2KxcjJ6DWq8BsjO0hGRvi0aV
	udvFMxyndqUHVT7z+cy8EWVZ0ULRYuecn9Z/xAT/eWeSZutMLJwSTnomyaVzu3G6
	ec4J3Ag/E8RNpIdiyGjQv1IKqpDHG/jiZaI4FvSnOa+s0NyCAr3LRiT25AR9RL5M
	xcuoSYgwBWNi6lJ4xQ0w3euOg8pwBHEJQb1TmrJA37Nofg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bevd80h6c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 13:25:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a360b8086so321475646d6.3
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 05:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767446742; x=1768051542; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1jHSeujvPi+ypll6UerzG/c5KTRwW7mhZxetg25hqAg=;
        b=OxrSFIzZhpIXv3C4s+7Gd60m6rQzmP7rAmgWSXyC3RyfV8otsajdoeM33uQZE1BIKh
         ofL3n8DQpIWqwQVZVmDSP58lkMHAa+SMJ0fijqemS8hJKIgpQ6g7hOvycQRhz1LFyA3R
         bq647ouTCv+spcVJ32EiZbg8PNUGxvk9LjTivzYxiCSyzDveDQeS+0TFO2VLDyh1rPak
         nJgc8iNllen9KqSF1hQnlcSZoHpGqwidSi0XM/k5WU+vQOUe6faeNz1J1NiKirMuWmjn
         Mh3mv0n6fPlMVHbKr007nmcmImrs6Z8KrhltvhSM2Kk/ib5vSRVomgTWNzRCjdoiMGCr
         zLow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767446742; x=1768051542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jHSeujvPi+ypll6UerzG/c5KTRwW7mhZxetg25hqAg=;
        b=vGC6SflcJ5bZqqEJARNbYsC+LaXqn8ToOaLX+XCeIDDDCUgagIq/l0NWrvmgINi62M
         /WLcDABwTRLxVr1vBbCw/jAMbSFYek6JbLAK2pgbIrKbEWnqdVsNqR5S3vcWNt81hlTD
         wp8GM2JT0zMTpZxR5wAf8SMXz/ErmX8cBCE59cjgpnkPxhq8DWo7YJQFrld+eQ/SazY+
         HzY+WTxnt64lWQ98EVkXAbpV8IAugtuEQ0mx18eUeqLjYpeHh4ol6HrXiKAAo3OSZUBG
         8JMzEGNfR7A6wom/xxEJOAMwLwzQSfyy3S70a4zl4UzGIjF/e4jF/7EEhaPdK/ix+rOp
         /AHA==
X-Forwarded-Encrypted: i=1; AJvYcCV4nT9yU3ddqvOpjFQl9/J2P66Pi2bx5+EBNv/9EIWbAaJM+y2OAT6naI6kRxKcg4K5b/+cQl4iJBV9@vger.kernel.org
X-Gm-Message-State: AOJu0YyCam+bbKJSoo2tPTyU8+Nh2A9tCUy62MtCjQtfuI5VtFnH2rdx
	QnDaubUs4IADipC/ROaVbyqc1NJIbCUKmd52iWcJNqUk3UmZOEKWnltuzWef0IxHaZkXt60pI3T
	COi1SO/4WcaGJSW7jiCAx0KTCYseVhftuLbJamB3pqyLGJH77g6Hhy33SW+TkcPiV
X-Gm-Gg: AY/fxX4ex6PRY1mFcJ4L1gWL0zaQ2mi9ycESos09/3YkQMiyzfslneTsW8rwfRC24/U
	z69S9Gba9sk5U0xkzbU4xaebiFpYsFVPkXQ7xPjai4EE1rDmLe3or8SiPZs5Ge/WlXS5tzzvagl
	QLiUDEsxRJfiYcLIUApzR8MOFHv8rT3moUUlIlVFDJBK8szeGoA2jwIHyXM/nIYfIS+o+uftV6Z
	Hbfx1Z1M6vs0NhFyEiQEMmwQOANm2inP0rvtn5cb+SdEPXNjOXhD3OtwblDh3eN+v1kolDHzVOv
	JSwGfYV8JoyUVWQrHqEv/cudQrU0m9tHbyuMYviaBXULqqYYApiIH2n6TFkwubbj8dDzSpxfRXJ
	PHe3Q9VPGDqete0vi2YIanBZJx2mgsvauBBxkdHN76CkQZNWgj3eAtMX9D6BSsi4JF3Y+q29vOY
	Q/MZaWU3RO6LsWukBk5pwemo8=
X-Received: by 2002:a05:6214:1c89:b0:88a:589b:5da3 with SMTP id 6a1803df08f44-88d8127909dmr755750666d6.6.1767446742307;
        Sat, 03 Jan 2026 05:25:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhz+L5nAtmGQdA2DM/plD5ZudSYlbXTyyMsXWNWZlsUzf0QoDne7Y9vEhC5GecJA2xOAPk9g==
X-Received: by 2002:a05:6214:1c89:b0:88a:589b:5da3 with SMTP id 6a1803df08f44-88d8127909dmr755750426d6.6.1767446741830;
        Sat, 03 Jan 2026 05:25:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ff5sm12867635e87.6.2026.01.03.05.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 05:25:41 -0800 (PST)
Date: Sat, 3 Jan 2026 15:25:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: x1p42100-lenovo-thinkbook-16:
 force usb2-only mode on usb_1_ss2_dwc3
Message-ID: <n5xf2mcmvgvriod6pmycza277rdhwg53pinveuovc3bl3mivpx@wyfb7jabwun7>
References: <20260103-tb16-hdmi-v2-0-92b0930fa82e@oldschoolsolutions.biz>
 <20260103-tb16-hdmi-v2-1-92b0930fa82e@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260103-tb16-hdmi-v2-1-92b0930fa82e@oldschoolsolutions.biz>
X-Proofpoint-GUID: 5T_wj_8RjZuVS2Euu0Qqb9j80Suh2LBm
X-Proofpoint-ORIG-GUID: 5T_wj_8RjZuVS2Euu0Qqb9j80Suh2LBm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAzMDEyMiBTYWx0ZWRfX/pctLuACRHq6
 uyvVlyKiKifwlxi4/K5HYzzoz5mU0NprXkTVisl4PSHx7b7D93bkXYReYZroQmNryxX7ADp5qEY
 sSwe7qwPDBaynqW7NDWbPwaGyym08qXMMF/DyuNR567U6YS7zG7jXYvgqUsxi8qPGAmugZltaGS
 oyDNgQe4EH3mhvXUajMT6K+qd3PoB6RWgnH1bayfjQTrX+pOmL1kgTjQyINIh2VuU0qHtsNVBBW
 XjOFMKlmJv38bhJpbSbwBcc3r6gaMgOEXzCwYXyuj6NwWGDIL4EQ687iDzVZALgAqaNixAqR5CZ
 giul03f7yx1246xwvD2/ixCzFz2FQgwHQtroEBheBLcKZhH/T2XE0yFcg+yvRYsp/e+0dkZcpyS
 I8uPJvY0ZxIAxGz9i4+TXTP8Aom//DLf9W3yKN2KKcVDmbWXphmBfOwAdQ2+P3ro8VRRvH8jMkZ
 v7SYG8O4OMcwwpORfEQ==
X-Authority-Analysis: v=2.4 cv=B9G0EetM c=1 sm=1 tr=0 ts=695918d7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8 a=iXntGJ6FaHpRiyf2QXIA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-03_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601030122

On Sat, Jan 03, 2026 at 10:00:23AM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The usb_1_ss2 complex has 2 phys, usb_1_ss2_hsphy and usb_1_ss2_qmpphy. On this
> laptop, they are used for different peripherals: The hsphy for the fingerprint
> reader, the qmpphy to drive a hdmi bridge. The normal logical wiring for the dwc3
> controller is to both phys. Delete the port@1 to the qmpphy.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

