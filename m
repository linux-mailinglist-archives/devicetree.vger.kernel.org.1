Return-Path: <devicetree+bounces-255413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EA4D22B5D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB5C53010550
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCEDD326955;
	Thu, 15 Jan 2026 07:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MCA2F907";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TK1eIBQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057873254AE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768460793; cv=none; b=kOCnQy7Ty4CK7S8zeFg9821GhtRnPpcVCbkdF7O+hi+6Qp2IzSGZ6wuinP7KLsRyYQ278UHGHWW85fN7XI+3AmsfydA9rjHGX5zbeSMJ3wXg6kSgR6+swPaUdcvekp4nCPw7V/d9FviuRC8GgkRs4HEmCTJ6VISN3cy5zAlWdcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768460793; c=relaxed/simple;
	bh=qpYR17M1TcWWF4r7uM8oIZciRdKuzI6PgJDmzJXZjuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=urQh549all3JbY80bZO3ZkASQDohz7/RGTaGCKwadmSwEmhVTgNZdDye47Hoa4p/PWJx8Glu4H2r/ed/O+TrN2rq8DpR3l0lhAm3nx12CMH/V15wqS7W/jQAdcVc16bOuhKteoqI4dCWwlZbYvjq0WMAMQ9GzNs+1zZpQglfVio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MCA2F907; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TK1eIBQc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fnBm606482
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:06:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3cHobchxhwXSPonZ3e29e7qw
	Gl0ZLrBiX0mfABv204c=; b=MCA2F907Kb2uz1Te12n0Nb6UFlGLs0PHocfiPJhj
	yu83ghiPIWjYuNm6HETgD9EgrLfrdSwd8QHN2CI/JcsV+Dlf9yiLXMHErfjkRnDq
	51Ob6ncOlyXVS/YaaHpCulZ5OWPfMKe2gx7v/UnOkfjYlkIIq+uKE/SCiecdR35z
	FE34q0ryLqTQAE5MkQFWmMqnDpblNSUjlSDUrYB3fCpJyUxU9taE8X6FqchDUp/4
	oGJunNiXh4Fxoj9ZP672b6LeyVk0Q3eOMxIOj7GsZARm8mJdxjejEHgEXXT9irvH
	VSM8gMe4IRykzWTLFGqhLZwSEQsnSoTxCFPObc4IbrREVQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptna04n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:06:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c5329ed28bso159002885a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768460790; x=1769065590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3cHobchxhwXSPonZ3e29e7qwGl0ZLrBiX0mfABv204c=;
        b=TK1eIBQcgGf4PliS10+IksRaYkeowO+BPZPfwOwhjl7i+5396fsBYpxWT1V4DHWFf0
         WEMJF6VbILs6q3aVK+FSDEtULiC6mkwAna56RxWpyD0zuKt7CJnqyNNMxICOuRhuVRR6
         BE3HUgD4KSRPUTqxFqlMb3ZdGZopuQ//0A+47I1Jwn9Q6S1cxxwh42artPsqr9K/R+Qe
         HcZt183DHfRlqV2VofiNo5ZKv6o+Zx6lionjterMMYHDwFegutXS/Yx34zgptc2KefqE
         oOWL4gBwsX8jn1QPYyWGFZWy693QmsvqBus4gqt2ywgWfmvBtWeCYzXt0eutvBQQgwuJ
         k+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768460790; x=1769065590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3cHobchxhwXSPonZ3e29e7qwGl0ZLrBiX0mfABv204c=;
        b=YIIcPSnrjik5uX7sJ4Gka3V4mGNUJqkxyFXR7BCoTXLAh1brzQzgJdLWFXBRlc2j8m
         wbqUdn8hQghtXaawiSnVKkb9QOD/IZg0uqRp9B+QoDcvHBOVB4/nYMPigFWNM6d7lb/P
         1cpRcjbdnDwTqMmMvOkKqV1Y0iNhSvIFxaTsepF3bmO7dtm3wTOxj/bFJjhsZPdHcCFU
         x2n6He8hZVJ31DxoPyi5RU8+4I/CISqQ9cOwdEVr8+vTi7ePz1w9aPYn11ty04+F7vDx
         d5TiCby33ued084ErBfR6JMKyHUWQ8Uezz516rYGe83DrQeYYVe0Wzf1IwA18DsPZno8
         ewJw==
X-Forwarded-Encrypted: i=1; AJvYcCUxodX0EMHDPws2/acPpswp0v0vSnQUm4bPUdMfPSV/dgzJysSfaAKocXdgYusyu6K22+xMlIha7pT7@vger.kernel.org
X-Gm-Message-State: AOJu0YwRJayshnmePqSmoxLvnY4AkFpMTjARbsgYhwgU4pfbKDSjbwbJ
	zpBwxY0qRg/sT4KCvADFQylsKViMXygvWlor5RSlad0csIhn2GCmO5Sj90Te/myF7aepSKKKAzu
	L9W0JjaKvzzKDondNeIn7yRw1JmswWgyhMPJPgthP/OmLu2TZKHxUd8fn2kMXmBA6GgDAtvB6
X-Gm-Gg: AY/fxX4zV13GxgvkWKl07zFPZHKphQTfheJPY7rZrWXy15EGMdntrvtETeIGv26kg7J
	HaEILfXQcLzIDYW7b9UwLDhhT6BdHSe7H66btDh18NrdhkhLrl/+LHI9VCYRNxrr2nD9rCM9M0Q
	dWoF3tJ+hr+wQP76nUrCiY4lqxR+EV1yDTsdIHWEmdYgS2kVptRb8YI7VwxRe9vLXKSFwVaMBJt
	bGT4UG75X+cF1Zm+rOVuSUVchN+GQAzAY6FLDHTLDiqUNPcL4bWfNwzYaJIZ2w68n9Qtc7hwwG2
	qL+EImVb1us0982snHHPHUPzpSis/aP59JldBLDjhlY1YtPSY8NANcdGOQZIfT3Tq/B8f8DSFN8
	NpxVhBzDthbmx8W9RFNvhWBfEHbkl8XuFCpMVdC4UMkqRPcvjPFE46oxes0kD86rxDCAtxCI+J2
	BGLtHCyfYxNq37BpOoKZyI2JM=
X-Received: by 2002:a05:620a:454e:b0:8c5:2b8a:a7f4 with SMTP id af79cd13be357-8c5317f089bmr546579785a.45.1768460790019;
        Wed, 14 Jan 2026 23:06:30 -0800 (PST)
X-Received: by 2002:a05:620a:454e:b0:8c5:2b8a:a7f4 with SMTP id af79cd13be357-8c5317f089bmr546577585a.45.1768460789549;
        Wed, 14 Jan 2026 23:06:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba102061asm1410997e87.23.2026.01.14.23.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:06:28 -0800 (PST)
Date: Thu, 15 Jan 2026 09:06:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH v3 02/10] arm64: dts: qcom: kaanapali: Add QUPv3
 configuration for serial engines
Message-ID: <lnltjxkg7yvp6fe2l6krlmmodvl2cetbhkc6fwh5mfqdahwo7s@oftskbsqo7c6>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-2-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-2-a6cc9e45de93@oss.qualcomm.com>
X-Proofpoint-GUID: mY9oy57yiYtb6qBuuSBXvdJ18QIH4jAn
X-Proofpoint-ORIG-GUID: mY9oy57yiYtb6qBuuSBXvdJ18QIH4jAn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NiBTYWx0ZWRfX7JiKRvGqSqx+
 l1xREz9vyBfPyZXq+oWfiM/d4/oaPBZTybSuChIBJdqcu7Piw9+djuok2RdH7idFOx4D764KFo6
 YQLsJ9p4COOUeH0qyu207ZjKSkG01b+e1zb1uEO4M4hLQUl58EFIzrQRizebbpQ8qsgX510xntc
 OWuS//ZGO/k3bmaw1jwYpNVjbdax+sE+74qi9DT2gu6EyjxAe/V7dGSK2DBg6IFZSOqV52DuJLo
 HXobg4ObvKnghu9eq1AWI+GYpBrnbQ4Jle9S48xgunZdltGvYAefV3uV2/RP0rCNlQaA60q1Cag
 DHWhQHehiMAiUDPWuCEPVAvQTYTttBxU4Wu+rWzDAmdP6NGR0U7kUztudLLeH6m/s2qna4/9R1R
 ii4MqpouCdgILvHNrRnpf3XaB5/sH7osgMmwUqW4uuQR6RuiURESCSBLSQ8CpCuTHWVX03cj/2F
 qvoVTUIPzs7gUw0VMGw==
X-Authority-Analysis: v=2.4 cv=fsHRpV4f c=1 sm=1 tr=0 ts=696891f7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eTtp617OosM5BNKk8SgA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150046

On Wed, Jan 14, 2026 at 10:49:04PM -0800, Jingyi Wang wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Add device tree support for QUPv3 serial engine protocols on Kaanapali.
> Kaanapali has 24 QUP serial engines across 4 QUP wrappers, each with
> support of GPI DMA engines, and it also includes 5 I2C hubs.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 2092 +++++++++++++++++++++++++++++++
>  1 file changed, 2092 insertions(+)
> 

I haven't cross-verified all the entries, but few random ones look fine.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

