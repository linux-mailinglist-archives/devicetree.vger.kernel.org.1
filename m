Return-Path: <devicetree+bounces-189592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9728AE8666
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB2E51C23710
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1138C265CC5;
	Wed, 25 Jun 2025 14:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gvz0OY/N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AC126773C
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750861525; cv=none; b=MTNvhV4x3kFwKvPllxvWQ+G1MyvI07whqYVNYlW/AjwRPDzNHF18Hd3LrBvw5P2ikFhFWvF0FXHFDFJbRYSUTRBry0DFgshOFuwzC4GoZCmaNkjlpT/uKDPNo9HtrLJ+0VRTCYIrAcHtGSk6uuYTdcYntZp69+wmM9VXz5wA4eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750861525; c=relaxed/simple;
	bh=SMDUPPCgoy4irnfRcvFwYNWDljy6PoXj9dVonnDd2qI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RFBfg31SS+xycr2H1mBSRjXTuXEkxUqTt6qdyZoxDtqLBquWivbHfSo33bml1NQf69kSp9sgnKA4z3Qvie1XX0fWRSKqNi5z9EfohhFRFWF+ULlmhsHkD1aLJiKc+3C+sGpXVXpLuz7AVTHFU7TAE3OCkKoIYFpwiz4yTThFcu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gvz0OY/N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PBZXPx023070
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r/9WVv1gsWDZO+apIRm8Vr06
	XSYUUadHkZ0D69bY6lU=; b=Gvz0OY/N0xL/7O+DlYt7P2YEtVRVSdbfx0RBJSjx
	17Ohq2EXTTAvcWyu38mbExIYiktaU1ZTWT5uDeA5D5Uwosi67mre6F6PpCKIJvyE
	K6yk0Sj9JZv4gEU8o13YHSETc1uiDrL5j6Z8EIwuXVDR7lfnkbdKp8fH2KqMZEB4
	04DQI43IrYPyzb4nqrY2jGjxX6ptgYUxhggfpbTa3lb/GPZhLrYllrKL51i8umk6
	iZo34Db3ZpycjeMaZczcVDPrMMi2wJNMvfVjPygBePBwoQVHYXLZO4S3csBr36y+
	rjMtd5FvLdYzR8YMGnzUO/mL2VL6IyEWkEO/sUwX7B0VUw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88f9xmc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:25:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c760637fe5so278894785a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750861505; x=1751466305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r/9WVv1gsWDZO+apIRm8Vr06XSYUUadHkZ0D69bY6lU=;
        b=DX2PxgffttyU6qJDW39caj0IyyQduwjc5sKVsojmLyxvrSYpFsU6qyBRaCzhqubN8d
         4LNLCTMgYN2CStCPz4Qc3luPoM3RPtkX4LcYaDF9T5HV0sZpdKyIY7HCRYj1QykNd0JY
         /NRiukoYlcScSOifR+HT8GG1gqgcNt7orcpt91tBKvoEmUuPeuL1WHpNOuABzau7siDd
         LgT3aIng3Eh9CF/i2MiVmEi2mp9uYsKQjShAwm4f39oQFURliut0jXvAlV+gerepIVG5
         /uHAWpBHg03aFrF74wxyXLsm9I91Ukk/2yk4T5nPfwIsTGykmqPGnOe0wSL+j4xcvO7w
         HSsg==
X-Forwarded-Encrypted: i=1; AJvYcCVptEXQAwxqIcWZSrVzQ/JKeIu674+MhKa1syM2aQmQpvD9BUYFTwyi5MmJtKOv7lWAJBEgkuSeleLH@vger.kernel.org
X-Gm-Message-State: AOJu0YzfbRPeQKHllrTm4YTzgJzHT5jhyeSaFB3BlRUpE3Uk0T8GgqS5
	sE2UwiMM6VgXOOR1HZcwqCe0Wp2++Z8/y/8tX5PmEU6x3aiw9HuB0F8aGAUl7Cy14z11WUODoGA
	9AsQC57QRuhiTnYVoFreeo7vZerIivgbRiWXHbNRfRj03J5iHzPu0lYHYUWD+ehmg
X-Gm-Gg: ASbGncta9AsU9+KECCLikZTqbM/fFgV6qCH/ivdPhcaHSb+BnnI+U/Ybhfj8TfTFje/
	2mQTE77rjtyOLr30YjwQ50MJZtzAHA0ggmOYf+Oir5C92onEy099ON+nmGv5haniyvgoljNtNdM
	h28qa57jfgwpKYS3Sd0f9Spiw73rUthJ+dm4vkosUaJfM+ciC13uYhuVGPqOXFH1+i76Dp2Y1mU
	sSgjtmofEPFOMbIERLp7vL+3vv3IpiPlGWKJRN3ql4CoSykL8lxO7OKoduyT6sJWNNBEvYJ/eRO
	gjbqYISf5Mb9fgZttR+Q0R2Ceocnca8O+zSdYiRH9zYmGU6V/jAI65cMrEprMRJtzrOJVSnOrue
	qGncVAmddGOs3lQ4o0WMiNE7VOBn+j9JxZvs=
X-Received: by 2002:a05:620a:178c:b0:7d0:99dc:d026 with SMTP id af79cd13be357-7d42969209emr390998585a.12.1750861505059;
        Wed, 25 Jun 2025 07:25:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGEgmUYzG5q66jyh65Mm7bfSX8TgdMQuftg7DpsTSuzDtL/tJHOo29ywzX65LlAhePFJPlSw==
X-Received: by 2002:a05:620a:178c:b0:7d0:99dc:d026 with SMTP id af79cd13be357-7d42969209emr390992985a.12.1750861504345;
        Wed, 25 Jun 2025 07:25:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b980f10desm18964771fa.111.2025.06.25.07.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 07:25:03 -0700 (PDT)
Date: Wed, 25 Jun 2025 17:25:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Add support for PMXR2230 PMIC
Message-ID: <zmqkdpmji2uodm3mxcteteyhfkef47kihola6vtxb4mhuynqwz@hvgfd2637mhz>
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEwNSBTYWx0ZWRfX00S/1B5eDpqa
 qxxRX9OdQ9ur/UQh5YmDKUMoDoPE2b9BA13bUSZEm87e46dN4LZlxA1AQNmPxt4lCTPXFfFZP6D
 C4cmb9TtNtmfdscISkIHyiUmjqxmG5Aa5d+h3tVPPpFLqEAWxNLCLj0Q7wSjJ+Qr964hwGkYVwR
 NI7oGurPv6y37tvmQdL//D8R74sMm5XrAqCDyoC9BXk3X7nUCwMa3pwCQUzNlKLXdI+XPHwOWjG
 Sr00hj/ts7papla/OwPf9p5wYBvyBNOfQTL4xcMM1Eaces2r44alkBJ6I88JuWF2CqmTUmP2sf6
 zhNTjgB2fToztgvSCAIWFNZ6NWr8Q1K+46NixXUm/HkN2m5ogRswpQgKnLxzKhhfPKBwBJU8faZ
 5SQfngVI/af1esvW96VQB4A1ERASBZH0eHVB3jXaxln0RZzs14QSe5NY/bVB4VTwElWs82aK
X-Proofpoint-ORIG-GUID: 2eP5M1Ge2d0WNVet8Uz8CiW05Z-2KWQU
X-Proofpoint-GUID: 2eP5M1Ge2d0WNVet8Uz8CiW05Z-2KWQU
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685c06d2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=ACp3OnxLZ-M-vqTyPYQA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=864
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250105

On Wed, Jun 25, 2025 at 11:18:36AM +0200, Luca Weiss wrote:
> The PMXR2230 PMIC is used in conjuction with SM7635. Add binding docs
> and the devicetree description for it.


Please use PM7550 instead.

> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Luca Weiss (3):
>       dt-bindings: leds: qcom,spmi-flash-led: Add PMXR2230
>       dt-bindings: mfd: qcom-spmi-pmic: Document PMXR2230 PMIC
>       arm64: dts: qcom: Add PMXR2230 PMIC
> 
>  .../bindings/leds/qcom,spmi-flash-led.yaml         |  1 +
>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |  1 +
>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi             | 63 ++++++++++++++++++++++
>  3 files changed, 65 insertions(+)
> ---
> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> change-id: 20250620-sm7635-pmxr2230-ee55a86a8c2b
> 
> Best regards,
> -- 
> Luca Weiss <luca.weiss@fairphone.com>
> 

-- 
With best wishes
Dmitry

