Return-Path: <devicetree+bounces-248622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC0CCD47CE
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 01:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11FED3004509
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 00:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5324474BE1;
	Mon, 22 Dec 2025 00:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pd+578YB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aa9pymwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAFF2745E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766363565; cv=none; b=oiByT3MFn79ie0LoLRvFLvFamqlEKSbQFkEyBArbpUJnk25mwCyz+Vn2JiX+pGinT9llR9FuKQWn7MXOhfPJ6j8v7yhQNnJrGLJUGtQaNg1LOF6wrZm+N1CqtmopPWI15VDqifH37rPFhtknZdXtOTD6oIcgj2f2dzTuvzGa3CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766363565; c=relaxed/simple;
	bh=/P1Ss9K6KnLFAVUf7uen3EDlmfjoh/ntTo6JdjeeED8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fYzbKrYypLE1F7ULtTMfw0GQEA37W/s5c9pgT+Yw9KdCDAiJahZtTSR/XYMPdJkKlym3mSIoWPGp7uISNTplOXbGsN5Ob9pj3msaNYvwAmppkpDg1vJZYV7aNEazxT5Wg7yd/ncrfk1tq+91hfbfEOT0ZMvuDviqT2aZZHFnbA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pd+578YB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aa9pymwp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLNwdre204326
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z1su2xa5xf/fsB56X3nSG3yw
	37f1nbHEaamUZrUxtuY=; b=pd+578YBRv5/JUYBldQRdmnzx7CTNlfJuEmpsIqo
	ifkSPDiGYeXrCRQlOuirczrSHlEhImsRlPNAuEW3Xz1aNVRCeQ5x7vGuCukTUEwR
	vmq56vR8IRcFsoCa3Wh/Yl4ssZz2udvGvXlS8UhYN/X7AQ60g7tuNiOKR7g78/0h
	CXe3CHpyWxkIjyFbwaTHBpQyXuoWF5HyWwddO1yH2COl935LXqNpck+wq8q5q5iJ
	NfiofqPgJXSV5TQOhWYjg3+fiRVrZoKAodOAZkMx7jGDDNC5O+jKqpwn2a4R/PIH
	hoAvYTwL7F9Sa+WU8E7Avs5ZjevyeC8hggDKPex7lXj5ww==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrab3gc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:32:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1dea13d34so75985161cf.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 16:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766363562; x=1766968362; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z1su2xa5xf/fsB56X3nSG3yw37f1nbHEaamUZrUxtuY=;
        b=aa9pymwpka2KYFErwXCE5v1dhsASpBALHfBiXq/927VU/Yo2UGPmMmyXPs/wrR8OcJ
         MUuaQuxTCkh0C07GIt3oU6ET9YfZhS1bjgTbhFQxqMIBZ+qVLE6MdhUAaNLn0yfmA3oT
         oAbOWCwjTN93ChYFrUbG9rpIjLyED+UiE0zoh+DfzZZmw7toi0b1Q0fcfC79thnv9tVl
         GRF9sAAiqJS5Tao/I/zBE2ZXrIoKGn1l0InnJr6ZpAgZH9AYL3tzmfnYF2ia8sLHf3C2
         8jJo7L3AOpyN2UXKkZr6oFwUHAUjiGJoeDuVGX83PfWO4clrqZ6dAmCblO4dkVT7MvuT
         pfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766363562; x=1766968362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z1su2xa5xf/fsB56X3nSG3yw37f1nbHEaamUZrUxtuY=;
        b=sZ+PHj96gda/0h1pKUgRAQBDcAXI5VbUaa6OOfY9/neo30Z3/sg4jPjMsTj2+jTrLh
         cH77+0I9ADbOfzzlGyWi8r6q3AWZ4YN6l4I2pGW4VdEYeKNZpHt10FDCrRGJ83NZ/M2m
         ggWYuy7azbgEgWRsirhIo2Azj7oYAZNpG5tu/ucTvVgLTdslg4WTAzKrFO1fQ4Yoi4hD
         EiHoL5cjScjMfKjcGR9EBJfpS1gGyOhwsDFK4/3LlljSwPau0lFsQS6hWmsGbgfSpVM8
         J3X1uYBxZzd0BzDXklreEEL5pHtqc5OE8g+Nj3ONS6MHPY8zjAEmhztSHda6A/IvUSVr
         l6Nw==
X-Forwarded-Encrypted: i=1; AJvYcCX6pa2m06pIziKj2HcsWxJK1p+Yr2W5dhuv41hSG4igBqdKHCjnIcAv5t3Faw9oMyZMG1kxuJgr3Xwr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmz0SZZy2I37F7ch2Lpk7atdIeIK1yhsY5ANGkF2DDOBsHSzRG
	xH6OPOxXDPhef1Th+J2LHwYkh07+SZpJWSRGYpI1eOHN6G5qBeZ9Zk2GLFpiekDEth0HTHcDFTe
	qBfliZsZTz0Q3BTkPmjp7FM/pNgwha4HdvpJQMbkazrfoEVWOom8FEwWPdM4w8TvK
X-Gm-Gg: AY/fxX4OYakPk4eEAZmd/E2t66zV6dwXNatTejIsVGsqB9+WSwuFNeDyi9g27I71xjF
	9jr3uJe3kiZOgoHfjDWRuM2LKvXqLGmLf9hrwWERlgohRraei8xzuLAfm12zfXJXWg8QG2ZKT7U
	9g3O4BC7YNwd1L2y/ew+uQ4GRpaOd7SHMBpSOTpmsA+bHwzGJXj7U3RGnztV1PK2Qt+TPSsUT0L
	5fwlBa8+yuHy0MEMbfMljDCVOKlqh6b7Gz8nynldqUhsnYxTOmw3ysNkWQuNMw8nMnWxYN+lXes
	PWpMmlVv3yeHrvNIPb5aTB4z0xN1jz06HnxT7Z8ksIODlYes8Xodm5XJuvitPnU6N5DQZA05COd
	sq07MQeQ1Y7kxni50dILL8EzkSGYnzsQOc5hhq1G3LQAuQ6hIQXPwsny3k3tQwo1tmrHxd0G2oT
	F1EWybmi1/eChwcqEX+KyDDd4=
X-Received: by 2002:a05:622a:4017:b0:4ed:6e70:1ac4 with SMTP id d75a77b69052e-4f4abd797e6mr143160181cf.42.1766363561806;
        Sun, 21 Dec 2025 16:32:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8L9/ZhmTLolvhHCyRbDif98BMnmObLNsixcJdDC+x1mplVZz0L9G/hiRCGw7dTV3xG8H3SQ==
X-Received: by 2002:a05:622a:4017:b0:4ed:6e70:1ac4 with SMTP id d75a77b69052e-4f4abd797e6mr143159831cf.42.1766363561298;
        Sun, 21 Dec 2025 16:32:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381224de35bsm21998551fa.7.2025.12.21.16.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 16:32:40 -0800 (PST)
Date: Mon, 22 Dec 2025 02:32:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Georg Gottleuber <ggo@tuxedocomputers.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
        stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: Add dts for Medion SPRCHRGD 14
 S1
Message-ID: <b2ofd5pxifqhznqo25byc5jksneeasy2zlli5jpqezllj2ja4j@tscydfwesmk5>
References: <20251204155212.230058-1-ggo@tuxedocomputers.com>
 <20251204155212.230058-6-ggo@tuxedocomputers.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204155212.230058-6-ggo@tuxedocomputers.com>
X-Proofpoint-ORIG-GUID: IOuZeiG4Eo-L2ia2ykLN_NFoeSdEQYtU
X-Proofpoint-GUID: IOuZeiG4Eo-L2ia2ykLN_NFoeSdEQYtU
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=694891aa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=yDUiu3_GAAAA:8 a=9wNOON5vNfT10lXOXtgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
 a=gafEeHOdjwYkg5oUpzAY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDAwMyBTYWx0ZWRfX730eKMTHEWai
 3UtO7QMv7zaP2w8kfMXTSqrUM+jQLdetkWGamQtzmTtfM5GIeNff4hQ0nHoo8cHt0/IXHk8gCHq
 dBEGnm2/+mW/Wg8XcfHmPXtTiv2SzPaNy3pJB4aQA5vSH0UVWQvdYKx48niPT0HupjywTQejYvD
 9A1am34XijTt1kH8jykcFMibZPZVrtWeqZNhLCHsAi2DcBzAY2/l/U/FZZ/LQH9wqOF5ts17fs2
 N36J7JHD0qGH/apigI6mn4rYKS9RAtO+tqjbatpzUsh0XyO7ao1nfjn1a9UX6ad5GASu0eda2ie
 ciK3mAqVaab1Nt2iUS+JZoqMeIQF1iRX6DO/qHXb6QTpgHcwRSmkWzfAUHBE6sfogun6NRx0TNv
 9zwnwk0n6xGO6eN8iqTdVEWvg+m5ypnzKkX/ZPp6nOfxG/Wb85URXjA4ABf3zl4SjxU2hr2wmgm
 xYVrgQoap9roAcb4R7Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220003

On Thu, Dec 04, 2025 at 04:52:07PM +0100, Georg Gottleuber wrote:
> Initial support for the Medion SPRCHRGD 14 S1, which is based on the
> Qualcomm Snapdragon X Elite SoC (X1E78100).
> 
> Working:
> * Touchpad
> * Keyboard
> * eDP
> * NVMe
> * USB Type-C port
> * USB-C DP altmode
> * HDMI-A port
> * WiFi
> * Bluetooth
> * GPU
> * Video decoding
> * USB Type-A
> * Audio, speakers, microphones
>         - 4x speakers.
>         - 2x dmic
>         - headset
> * Camera
> * Fingerprint reader
> 
> Co-developed-by: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Srinivas Kandagatla <srini@kernel.org>
> Co-developed-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |    2 +
>  .../qcom/x1e80100-medion-sprchrgd-14-s1.dts   | 1515 +++++++++++++++++
>  2 files changed, 1517 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-medion-sprchrgd-14-s1.dts

> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		firmware-name = "qcom/x1e80100/medion/qcdxkmsuc8380.mbn";

Please use the `qcom/SoC/Vendor/Device` path for the firmware. In your
case it should be:

		firmware-name = "qcom/x1e80100/Medion/sprchrgd-14-s1/qcdxkmsuc8380.mbn";


-- 
With best wishes
Dmitry

