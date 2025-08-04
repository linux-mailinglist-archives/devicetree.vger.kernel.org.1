Return-Path: <devicetree+bounces-201543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28751B19B0D
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 07:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D711D3A1C4F
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 05:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A193227E9B;
	Mon,  4 Aug 2025 05:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DFZ/CBCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC411226CF6
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 05:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754285264; cv=none; b=QocN75zgDAcS4VU/vE/0lmx79pmARmzUxbG8LWxG8oDwDa/18JOzjFHG4s3qTBlGT2VEKX+Zama9kYwkAirYyoU5LCqvV9SA0yrj87FHSxebu4qpklbaPEeZ4L/glbUFOHuawZyHfS9Rm/oVfnTX47rc53QmUeUab+R2q2793dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754285264; c=relaxed/simple;
	bh=ZYomnzTI/gqMaAWNJDB56qa6PtOYj1KGLdXceeY1XL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nacSzEeX1WuJtlTgwMzjXp273bTTUSoouNOeUFyOA/2MvUjRYx2RIPMBGI5KTlpLIXhiOrA7LvI+W/jpL0M99UvwYaKokusoXhFI7BLAiJnXeISAoMmNsP/snCyY6BNKKZvVJhqqeminx7JSca/5uf/+8iv7aCnE4vjDr5gTHZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DFZ/CBCY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57400Vtd016348
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 05:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+PcTXtqzA8go/oZD84ti/MPc
	iAxuBsczUeBgnZ1pTWA=; b=DFZ/CBCYzlikPei4IMoDe1V5c0bih3np3LkDKmt9
	gKPZirVsMp9wvIf6hIA3tkHmbXlC5InTlqX3vOwGyZoTHq6qb1t44HKbAAzQU1Ay
	cWZYA1l0q5R4BS1e5pyqDppXp42ahRxihq/rH8IBMbl7P8K0YSPwErpI4KhtPSku
	ny6Z5gDR1uRLn2E3LVoq2HvB1KXK+d8Re/z5Nt5T4LkuwNLPF6yEnfWQGkWHRcl1
	Z2Kz8GW6T8oCjLHPam727MELMhn03H/WlNBj7rTz5c6OngqvmzQElpZEDY6Cv0iu
	/GfgcTXu8XSBSleL+RGI4xOpgvbi9k7IPQ4NzRtDgRRBLA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4898cjkt1g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:27:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e1b84c9a3dso422445685a.2
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 22:27:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754285260; x=1754890060;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+PcTXtqzA8go/oZD84ti/MPciAxuBsczUeBgnZ1pTWA=;
        b=G7kCys4uZBlyVPmnGjfC5mE9X9C3k9A69B0DyCUG4XOIkc5K8yH/aI64fqvSNu6ulR
         UMLvJBVeRoPivbnU5EjrSgmdDefCAnixBXQG6VrErRvcRTmkwv4KfQ/dGxMJTMAdDNSr
         DpdKvnQuvT894cIBvKLbZtGLueVe5Ise6iocWeSZC17jzlq9BIjprgiX2ZyOQoBmUoGb
         afTcnmVvvMmH8agYTZHqjuu8TlyaCR/eLA9yvrTI+n88IYym/ROHGfsEQM70WpjN5Gtw
         fnlKflcmVktSg82Df+q7kji4jCS6iOBv7KxqF+qyLfwWuk6qOqsSi0Q4ALXCS+S9vVIm
         Kmmg==
X-Forwarded-Encrypted: i=1; AJvYcCW8ahv5a9l9rKWacclk+Mk1FJSoreRdTGPF6pnam2KgIBKX0fsqTy9+8Bp30/7uu4DpRwQFOYANs8iP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf6x+8nC9jjLkLtMEr/efpoYcWy/pGK1+ZGH7ECK4hVfTB5s1G
	xBA6RX9wZd6w36hSUflZ8vw8rZU3V5F6ZUmvJ5TD3/htqpJ3O+OEWcvDu1S+E0d6Srawz4UemxA
	XB+yX3RSKFiuM8LrDTOdHMjrX+icbmzYNj8LCkGm++o4BRmTRsTUj8jktAriNWz05
X-Gm-Gg: ASbGnct9LxKvUMj8KTE0lshAa2w9323W6uJKQAehmR0dZQJlorTJcNcoE4MYsSTq/N8
	lZR/glJfBs3T0u/b+M8JsWviHKGOz5P9iWNc01pmiywR9q8AYZLM+c9nfbm2qkWO4URe+XAfAMj
	iVRudUV4pL1oR7QpeARw/G/2umjc6W7SyCkWU0AJn0cIqS4ahhoiL1St+d2OJIcDhW51hJZn0un
	SDt0TfUtuRVp1p1Ghsb4WyNSfqHXLFP+ZZkJbotKKcqgnVSwdDqO+3AZbTGbdiHYCetUb3v3bXq
	7E8QsUwJgT1eWFnJIhQSN4ASow9fKXVEnu4tIrM4FK2F1bu9vk6rXMEplaWT9yXLcaGA2GxTNXg
	Za/zm5wgWlDxvWwvSgYJS5g/MctDqU3wIwTaPL1NpDR879aSAc6Ai
X-Received: by 2002:a05:620a:5ed7:b0:7e3:30f4:fcdb with SMTP id af79cd13be357-7e6962dfbb3mr978589685a.18.1754285260399;
        Sun, 03 Aug 2025 22:27:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMxoOfzknCZ8uMmy3YY6kqSkPaQ9xTlPrcxG3f/lbgV0kvxmrcKW8Du96Of7dM/xfXukyUdA==
X-Received: by 2002:a05:620a:5ed7:b0:7e3:30f4:fcdb with SMTP id af79cd13be357-7e6962dfbb3mr978588085a.18.1754285259948;
        Sun, 03 Aug 2025 22:27:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca3214sm1541878e87.126.2025.08.03.22.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 22:27:39 -0700 (PDT)
Date: Mon, 4 Aug 2025 08:27:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Imran Shaik <quic_imrashai@quicinc.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect
 provider node and CPU OPP tables to scale DDR/L3
Message-ID: <45oycvzjogctsoi4jiumxtastsrjzqrls3wc2vap2eryq5kcgq@leirtq2vfvxi>
References: <20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250804050542.100806-3-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250804050542.100806-3-raviteja.laggyshetty@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=MNBgmNZl c=1 sm=1 tr=0 ts=689044cd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=qnWTwb_pmrVv18jEe2AA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: olpBd6N2Waj85j2JUUW4Lxu8rFjRn8Wi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyNiBTYWx0ZWRfX12vD1s5i42wJ
 NSjs+63/dUPEWb0fqkjHRtFlhmD7wjW1i9dWtmQIYgFlkEQfv+2i1cGC+GR1RECl50cqlH77F1S
 OQy4KIrQT8lfm3x3ny3Qqxx3K3apjFjV3QAAcW6W0TicOT0YfmeaCVdarbMc9wTm5FA7Ad6ZNdp
 iUwd15rQDAT4hLM2VhWfT0A+wJQdxKWxCEdubBTa9tgP8p1ns7cslwOfDaU5S2pkXgn4heIDjA6
 L8CPCWRq9FC9nsDUoHMNFUrBqEDTw/CwJgBOuNmZoqCTD0TZb0+aggz07ep05lwkF618Oz0qn1M
 cO8z/2IwfoV5y60ZvyyU+7xOvhx2cv1f91iJe3EwOV6ttQ8Q4LUeCAS/NYrNOzE+J0HdHXAFBme
 4KLgur9ol4mSCSu+nsLZOmRYtD6VMTjCmjQqXIlVqGtl3ft1MYBVyAJjy+InEUClkQnC1Diy
X-Proofpoint-GUID: olpBd6N2Waj85j2JUUW4Lxu8rFjRn8Wi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=789 suspectscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040026

On Mon, Aug 04, 2025 at 05:05:42AM +0000, Raviteja Laggyshetty wrote:
> Add Operation State Manager (OSM) L3 interconnect provide node and OPP
> tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
> As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
> compatible as fallback for QCS615 OSM device node.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>

This SoB sequence doesn't make sense with you sending a patch.

> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++
>  1 file changed, 148 insertions(+)
> 

-- 
With best wishes
Dmitry

