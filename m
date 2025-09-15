Return-Path: <devicetree+bounces-217096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A8B56D20
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:07:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 272D13B8F8A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1631D4C98;
	Mon, 15 Sep 2025 00:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pc3IGBQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5091B7F4
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894826; cv=none; b=CJydw4q8gcK+5xucRq9t7tDM/eTb3LlPPmSEV6BjWBrWKCqiiW8YFqx/LHE/eLNOVUVp73fGXurEakjyUAvQ4CYQrFrPLWjkxMZR+UY3hj5DgsfTM3wg7JhMuwCEU922T5xBTZTOU90Le1xJlWySOdjOIOYFQTKYHH15nQEj3jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894826; c=relaxed/simple;
	bh=CzHNrfktlaS/4ODUMT4RaYAOMeg6Qil5XWqJ4rs6Ovw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K9jMbawrtTS5pAO3nskVY2onJxLhz63pMUZQpZbIqFBGP8obV6QaWLQhydxJGDYablc0FeU7GcEVzphtejTxLfMKlz2Wkw8VrSg6a3kM3+sazsovg1avIDJ5e+SLSap4HOmYEJd0bbRPG2yrsmdNXjQfEGk8iDZoAUyOkr+nqJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pc3IGBQ2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ENI90c026462
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:07:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Mh5sherNX0Q7001jFm5e3R/a
	R9MYR1zMB5/R6VlH5zY=; b=pc3IGBQ2F+XOHk6PRzPPKJgl/CGbDJNc9BPjW5mq
	uWN5lngUkmgaMjIdxdaFP95j5HFm5cVAKvmgd76MGHTJH62XkHGKKrrsAmWOqyk2
	q6KYuOingaxaPdb/VrAaac4/klQmDkUODhkTfcbronq/Zp60Y9rqWf6GzhJcjNcO
	LIDd2uHkCRPqRGg/chmBi+2pdEw3TrppmTAl6d6ph5MWJJnwNVpH8SjFYROmGk6N
	DwXvlgk7r+iWpTKfcx4XLOwNuLxKJEf4x+OI8DMnEnbu/dXJn8+w3KgVlt7IrmVO
	aPu70eumA8CQNPbUrQPn3lPX5RVkq18JFCOwMyC1xQx1Ag==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpsrtw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:07:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5fb61d80dso105687281cf.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:07:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757894822; x=1758499622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mh5sherNX0Q7001jFm5e3R/aR9MYR1zMB5/R6VlH5zY=;
        b=wdZL8qX9PmAYU6raSLIF8SkhIY/8oUr8wwBSg4rbijEIMU2UDC9TW2pQteCoY0cp8E
         xjZN7+KlwVTYWrhsCzk+g5s/pwya6o60GV1xlYMbGmxhefNq1BB/Z10aEDLoOi3FPIfw
         GK/zwe57goGaELVtREoRyK5NWG1waZ1/zR4krD/S3FHCCHVs6RUjB8VZrtOA+M/W025s
         zij+58HPKJzzXCiw2Eb6uvBDO0GYeQMJaQzoFXC9WsBwtpOmS/ahvMu3PTwvkpKIrrXS
         RAz/2AaobFt5wprbWLx7UbPUD1DrODsFx80jNW9Bw/ye3NT8B6CgPfCm8AeUWtn14xaB
         uJTA==
X-Forwarded-Encrypted: i=1; AJvYcCXSQ0Ubk5NpZnjunLRA9RBP+5RhZ11wMD5SuXfOIaLF3TL7TIB88R8i4+KrFEjedybfRCbGZYSc9A20@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwu6Q5d6NFukY/VQB51atAjEg3KMchVK4XhjDzp1NejLwrxjl7
	h/2XXu9+Q5i6AFDUxtwtWSdjwd+XAFPsPpMwGzbkUsZy30iZ+tobJyR7Pa/iOZhymsP6k7zRrcS
	6ZbwYK0TkLjRRnTiy1/arhsaAScGfzyeebCqk6OryC1E/pSbtQBpXD4VsHi0DDsNX
X-Gm-Gg: ASbGncsTLwz/m2/2Jx0dcdcwANAmhmUl6bprykdLX2D8xvH9t3ua6hEpPqid6QVdV4N
	vngOU4mZw/PntqyDXMmQPTFk+8VWZJGLsp62ocyZ+oEUa5e12eIcQLC2chigpeLFgkCDNdoN8GF
	xzqSbvI0zUjlSDrlvIQH2amLSliKe23BUnIv696FMyWfHA4O54KuHwNF/2co/QZ4wQHXd0TofhA
	dcUrg8ptIN1GhXAMn66hXOcoA4h007XnXNaTzII03/zcSmRZ0i1TyETcRFtW0dFuyVQODhr2Eq7
	vytr5w7V86qM6/Egcstn43FqDYMo+fXtWhfvsNFQtdiPDzGH5X0178tE4QVu96eDtyncFRIDOOS
	c35E3t9tK3OxKj5IdG8PDl9zNRzXzR1IuB2fRrBT4vtXvZDWwPPl/
X-Received: by 2002:a05:622a:4cf:b0:4b3:4c51:6434 with SMTP id d75a77b69052e-4b77cfded57mr125964551cf.20.1757894822526;
        Sun, 14 Sep 2025 17:07:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsW542Cjhva67Azk2KlVPzEQFGIEU+WTmFXy6f0ObUGTCHrlb+05YBOXy7VDLH+4P8nX23BA==
X-Received: by 2002:a05:622a:4cf:b0:4b3:4c51:6434 with SMTP id d75a77b69052e-4b77cfded57mr125964301cf.20.1757894822072;
        Sun, 14 Sep 2025 17:07:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63ff4sm3220354e87.84.2025.09.14.17.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:07:01 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:06:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-gpio@vger.kernel.org, David Heidelberg <david@ixit.cz>,
        Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>,
        Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH 4/6] ARM: dts: qcom: msm8960: add I2C nodes for gsbi1 and
 gsbi8
Message-ID: <kiawbx7uoz4bs3esiyraeess6vva5f4fwwqh25xrgae6j35gn5@4eoereuoumhb>
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-4-84cadcd7c6e3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8960-reorder-v1-4-84cadcd7c6e3@smankusors.com>
X-Proofpoint-GUID: EWKvyRYUTwf_rSyiCMUlJ9uHvQAodfVs
X-Proofpoint-ORIG-GUID: EWKvyRYUTwf_rSyiCMUlJ9uHvQAodfVs
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c758a7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=t1JXzLs-izEPKbqAoeQA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX8XapTVVKKXzJ
 hEEsnUhnc0nsrWgoVXXHGixm/mNc0S1bm3PwtYRfeFC+YqcW2jGVjmu6cWMnYI3T4tPkivNQA/E
 O3YnsXHcdzmcF2zmJsbdG+VdNxXVCcVQ5N21l4qpRvxRJBMccqyVCOfH3AffFnp0nngBsl24Ljj
 PYK876vM6WchCS1GR6PMlH/yowbAridpc0wbLEzVmqypYLQM/AEO8st0PNTvOhoA2OO4ewl48Dm
 CcoeEoj7iJlw8/qb6422DJg7YdflW9oL1x2+GVvd1HW/XKqljNWVhTglXX+dLeTqmlsPwJqboal
 9kWrIJbhwagmplf20KQekQqgE2IsbBkYMgjtK+JIzlki3oLdR5MiN7FF4JalMb9zzR9Cjh8wMYC
 q8FU7/Bl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Sun, Sep 14, 2025 at 06:34:55PM +0000, Antony Kurniawan Soemardi wrote:
> These are present on msm8960 and are required for devices such as the
> Casio G'zOne, which has NFC wired to gsbi1 and audio amplifier wired to
> gsbi8.
> 
> The nodes are added disabled by default.
> 
> Co-developed-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 68 ++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

