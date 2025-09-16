Return-Path: <devicetree+bounces-217783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEC1B59367
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A589E162FD4
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6BC305047;
	Tue, 16 Sep 2025 10:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oD6gwrt7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4191B30499C
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018167; cv=none; b=ZbbL5KOW34tB3OxsK0+QwW9hiYbzDesduis8Shig4RNuC2cE+KNMvM1fzUHNbD7TYuTr2Q0O7IZ+CkBc+FH7yXJgasSvp+fJwKqfucK6kUmP4id4SvanlA3mp+2LyJGECcYd5jqDPruhpbL36wiwWhUjmB7NvEmVKmVyNZMYFQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018167; c=relaxed/simple;
	bh=LzZojb8/MP/ud/lu3eiFwzOTg0vcJ9FUBYQHsGJbXuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKu+zFTO1G1f24OwvHpGS8H6HFWsQ7A1qEXG2YcoGsvv5y5YEKejzoQuSaOrzlm0K0qj9uRijf36CkX8O8Rvt11s8qd0tfdC2sSKBomZHLkX5Po6ZpXJLvtTka0BzwljsCm9QJ2/Pxq/5EYrOQaja+mJ6PWnPojTNFDU6sxtc8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oD6gwrt7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA37Jk014090
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:22:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dsUOBXT5fPZdjovhyA0wRCif
	VQsPU7vYwfY5SFsZzbo=; b=oD6gwrt7ciUJllEv81O9W7uKYMyG/zXIQnn6C1OG
	cY40DALBKYR5oWNLzLIHdoRJaoio5HW2upCbuR9IQaVQB6FBE07CA7AL7JWS0xIP
	5FZM/24W6bQB4b6Qccb53Nmw0JxexMzmBSafkcOKvXaDOwJseDpFNb38qrvAtvtl
	6B3VwIAyPmIlsTBQU9StRYXs2ZcZoOcYtRWBPQppRv2KFGTeYelqvMYlfkXxWYRk
	vHFjJ/n2f5+dikPZdYooBZyeoZHas2qU8HU8V32XCGtjy3TzzDejvsLEidZnpUoE
	2wa9JQKkrNqLjLeZZX4orM6xbOo6pkkD4zRsoWBEZTP8WA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496x5asmkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:22:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e178be7eso148782891cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018164; x=1758622964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dsUOBXT5fPZdjovhyA0wRCifVQsPU7vYwfY5SFsZzbo=;
        b=FRTNgmWPNQjx0n9fX/NLrs1B+KTM065ibneLc7FoeebN0lvWIrQFO53e8syBT5r88J
         Iz7al1WVjWAhGKhhMid0ce8/N+7M3NVLd4CY+kmIJGdp07lDugnOTcNF9EYHeKy+Bmis
         HrAmmkA4ehmD648Zt/Y8vOji8ytiZ6rrKSmEj6klmQ4ctPopcMAjX5yCVWx/fyIjtCza
         +4TE3N/goVEFNMx0obk1PwyTkkxGTYmVqjs0vsqaRPqLiQ4k4wHTXuS6SYOc2frVAZy4
         jCTUnWmFdIjfK+hmPqN3g5aJeDC0Xc3wyV3euWzi6bVAzKrQFQqaTOtQJouUbz3LzUms
         u9sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYPUiKmKkO4pKlonDByUhpiy+AavEr7NKoUsfR9+irGtlZTWw9Evkg2BOLw4eT/0X27Qi96uwKoPA0@vger.kernel.org
X-Gm-Message-State: AOJu0YwO86sQC1G/B0xF/MA2mr5nETqDJe3R8SrVm/2Ex2KXJ24yc2Cu
	lCfrx7AWhm+Bk1mjqV1mAO12K7lZlXaF2/f579uMwE+r1sZnsLul6pUe5lQfXQpM350VOZ8CJNo
	hczeopDHn+Tv/+iARulLVM95ykyiiipIay3t6p9smyyCnJICXrTyCBsRUSym6Omk1
X-Gm-Gg: ASbGncvcjzHPnMnyAXzpW7aQGWbV1UvqHEiaTqIuu3L25Q3jcrOSJAMzIkz2B7JXQ3R
	lCB7Z76ZcvyjWIKAlBDYLZIuXtdQsyofc4QHPu+FxT47Al5yPsdcP+YyXYPi0L0UOVutergxO9u
	PBWdQT8mYtYLRpI/yCV2vUg6JuOlJ8kK69I0TMwuFYKWR/72qpPuAW4RQnq+U8u5vbdIDjwedZ8
	AX7CFGQ6FX60eMHZDAVpxV8h90D5HOfwUUl5xlMNIlmqQo7WylHPKhVJ6DSTsIYX7+2tnt6Q2M4
	Kye8MXZRSbH+tmn9/65z4Ss64Byf78J5+EMQwppV6gx13GTvAKqojUYP26kVpdJVDOytTeX0yWk
	GwEHDFR9PlDzeD0E4pJJ3Wm7+7v7jGTpN9EYrBMSNpufVsU8MjAM0
X-Received: by 2002:ac8:7d0f:0:b0:4ab:7f61:4339 with SMTP id d75a77b69052e-4b77d043018mr173775141cf.31.1758018163928;
        Tue, 16 Sep 2025 03:22:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmt1N76y524zCMYAdzsEX4rsQJe+HhKzBcwZrhZwRUGHsN/sSmGe8IqeLhMm02zuV2vMtz1w==
X-Received: by 2002:ac8:7d0f:0:b0:4ab:7f61:4339 with SMTP id d75a77b69052e-4b77d043018mr173774961cf.31.1758018163402;
        Tue, 16 Sep 2025 03:22:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a31cf5sm4237309e87.137.2025.09.16.03.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:22:42 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:22:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v2] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <5sg43rsun33i6bm3vz7io7yx2p4m7bmk5bnrnjg6u3zrulyofs@gyxtnfs4gvhz>
References: <20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com>
X-Proofpoint-GUID: 9qHZpeUs9ce--m0sv7KCRuUW6sNKJCkY
X-Proofpoint-ORIG-GUID: 9qHZpeUs9ce--m0sv7KCRuUW6sNKJCkY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDAxMCBTYWx0ZWRfX3TVOvY58bGsF
 21G0L9uhRs/45zfu0bAQi63v6aIECeKN7yGsnKlW8A2dvJYzb8btY1YrPbMovQsb3sjHeetf8gA
 mygCuVYzB8FLNmToNMzZF0FkwQfpv+JUmpO3jG6ST9fK53f3sdxvFm5P0lKnaYr4D3OlQl9RRnR
 SDZhcZyAm1x1Mo8mYVBMEBm3j2k7mU4lk/93vxcAAYN7PYx38pbSnOrdkINWT2kUlqwncBvfi9+
 LrwDbGSwAsMCikFCf2BnbTfrqStRZJGZxWscOtGU975se0lxb3U5bHxYtEfLJPdqSJaCoZRxx+E
 jHG4RxOPmOkIdFzuoa/3tdaZg/RpBZkx+raEUN2S2/P7aHwt70cYqH4F291pjgi0X0kYaOUZ83n
 3zEYx8Td
X-Authority-Analysis: v=2.4 cv=WpQrMcfv c=1 sm=1 tr=0 ts=68c93a75 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=hSxh5nLx1FgLBnIhuNEA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160010

On Tue, Sep 16, 2025 at 03:31:35PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
> 'qcom,sm6150-dp' uses the same controller IP as 'qcom,sm8150-dp'.
> Declare 'qcom,sm6150-dp' as a fallback compatible to 'qcom-sm8350-dp'
> for consistency with existing bindings and to ensure correct matching and
> future clarity.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
> This series splits the SM6150 dp-controller definition from the
> '[v3] Add DisplayPort support for QCS615 platform' series and rebases
> 'dt-bindings: msm/dp: Add support for 4 pixel streams'.
> 
> The devicetree modification for DisplayPort on SM6150 will be provided
> in a future patch.
> ---
> Changes in v2:
> - Update commit message and binding with fallback configuration. [Dmitry]
> - Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
> - Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..82481519005a1b038a351aa358b9266239d0e8a9 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -46,6 +46,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,sar2130p-dp
> +              - qcom,sm6150-dp


In the review to the previos iteration I think I was a bit explicit:
"qcom,sm6150-dp", "qcom,sm8150-dp", "qcom-sm8350-dp". You seemed to
agree to it. Now you didn't implemet that. Why?

>                - qcom,sm7150-dp
>                - qcom,sm8150-dp
>                - qcom,sm8250-dp
> 
> ---
> base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
> change-id: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86
> 
> Best regards,
> -- 
> Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

