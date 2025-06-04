Return-Path: <devicetree+bounces-182695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EB5ACDAE0
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2FB93A5467
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 09:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491FC28C871;
	Wed,  4 Jun 2025 09:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TS3dH206"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714AB23E33D
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 09:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749028900; cv=none; b=LFQik1pagxtq1Kwc20NrWJrDjiXLYq70BFwWHftb4BcpI7TW+Bu8Ze/3k+AgjdijCncg2sBEGCB5q/IFDnXef4UwNMLg++V8O7bi2ZBpGSLExGXCgSvk9lJs6ZBM+05YtK3/gh2Sd06b0Rqzu4AcJjPlALDVloVykJTo9m98nRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749028900; c=relaxed/simple;
	bh=iMlClG97yiqR3GPY8UpwCOs8GVYHJRmskTZc6hJT0No=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=URQGizoQ51VujUKjqcZrocjHubT50JxFIkyAaZtPg7DXD6T6C5x65ZrI/i+YPU+WNTRzwX3Oky4XX1eXQzcgEHhV6MbAI3wtnF57PPud4AH5mqI8LTEz6L9Y+3CYx+IRlq48mHF8QFPyedMacaoc/N8Cj99R6s5E1VdPCSZBQQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TS3dH206; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55487BYu010388
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 09:21:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R+aLR+kiZ1KGuKrMttuGRYAV
	lykWWo5RCnMa4dfVWY0=; b=TS3dH206MqEG9+qEEwvj+nlq2yphj1svKGBNCcNU
	V5QqVwdA7Bs0eMwXb67r5swmHRRLbHFbZwdNmWxnHq7jvRLIPUv0173H4tikgNil
	cQZsq0sDS+yfCvmJU5j+B73XQiGlo7//F9VFBq3KOAxqUoUDcg2C+2wvNHgtWuC9
	/89vOfS/mJSRkzt3csbEwVussOwuUVPeIU36NL8vPs8PZWUCJOp9p697q7Ljkn8/
	jgt1GwqumbEsFJFqAMFwi0Humk9CKuifAJqHFOXcsWMUjzDLoATSTQVjmvQDWZCO
	JlHMRUjlepSX81A14oHXMAo83SyoZ/aF6eQ8SnbjIc3NoQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8ynhd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 09:21:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c92425a8b1so120535485a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 02:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749028895; x=1749633695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+aLR+kiZ1KGuKrMttuGRYAVlykWWo5RCnMa4dfVWY0=;
        b=lsrlgFMvEh1Jz0lpsQtDoFedihdqbq4zYqsUJifvQgJmSNmr/8Gn2m3frD/5sBIgKX
         Sqb/+njdtYdc9+4nEM5CaqUQ4Nu4NniOfre4AKCdemXG6NF6KlRLhHcd6B6FK0Tvts6p
         0ApQZLhde16iHrJRQOOreC9HawZChDUiJFDCVLCwzLXVVrjONn8r5Q8ORtwfl1S64egj
         Ilu1PfwMDCpJ1e5fzOhx9vVTXpn2VHEDVrwNEZ/1DJoudEaIZ/agqCfR07jiHnXboUtR
         URhT3OMfXulbVK+QKhpfdOgkhyf2vpdhOfPJLSrjTIq8hA5Qj6pQd5MruuuFIcR3E1uh
         JeMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHdqzAAx/KOR5TLzJf3vuxqQ8OmtBYJW5OuhD4vYk8PlA/vMHJ+KF9G4qgc+1qEMbH/3A1lS7ZL5S2@vger.kernel.org
X-Gm-Message-State: AOJu0YypWJytqVVcG261jD/+HGwLDvR32K9c3hZxx2B0mZNoteLsKG9A
	WDUKe9cZjgKUhjkvEPFZxnrVynTBSQt4sjfj1xfugoWIMy0NBk9weyBYLJV3OriB5wSw0mCU+vx
	eiZrLsbzvIsqehT/4UB/+ZGvHJAI0yifw9DmzDrtym8y/uEIG+2QJvZzg4qgN4Ecz
X-Gm-Gg: ASbGncsdNrLzyfLb0WIzpgX7EOzkfFOptFA3jvlj7lihnvFfRuBvp77KfLIlhkqopti
	ztILA9SX0ex7guD9ANLVsH5i5J7mvWiSOU2XLwr4L2S0i+X9W1mEdDMNiaS8BNNpb+UDiB1DAqF
	UgCzNQWCgaDQt7W5FTVbpEF1gSS6X+y6EEilkNAuzOS5rDfJiHnIsRj4Gtq7X32IKQoiPb4Cu9u
	hxsWbDSWsnl42dNUucYlsdSq+ttoz6aCNZNxN1Q7MdKB9x+Xmo1EJF+6TFtfZrVFyxwzY/NCCE6
	BoTJrlfQUrbz3kquubLDlL+Ah89JB22lqowM796NTs483LomhD4oLjewJUOdLgqcoj+1hNkaAh8
	=
X-Received: by 2002:a05:620a:4496:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d21155b3damr900235385a.9.1749028895478;
        Wed, 04 Jun 2025 02:21:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMv6RZWeZ/LQ6eNRt+X3KctomnYvePpW2ORiBuP4HN5BXynMs9rse1yUNywIc6fLSS3qR1Sg==
X-Received: by 2002:a05:620a:4496:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d21155b3damr900233085a.9.1749028895133;
        Wed, 04 Jun 2025 02:21:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b1b549sm21837981fa.10.2025.06.04.02.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 02:21:34 -0700 (PDT)
Date: Wed, 4 Jun 2025 12:21:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: Re: [PATCH v4 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 QCS8300 & SA8775P
Message-ID: <p3qlrehr73i6aj43jwnavhlmm6brnkjkyos3h44bg7p6ozmgd3@ejqlcy2rpwcs>
References: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
 <20250604-update_phy-v4-1-d04b12bb89f2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250604-update_phy-v4-1-d04b12bb89f2@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2OSBTYWx0ZWRfX3G8HAOStlElg
 hoYWMhtp0VCBFhsy0qNgrvwofnajX7jDlGY5FcPMLVsi85ZhksOW7G4J1rjveFW1UcBZJOLJhcl
 KR0G1v1MDa/lT8plNqhHjXB45MC8quvRqPPbCH/86SVXG5Vkq0jI3zPBveeXkYFBUFwEviOocTr
 MM+Kpm68R9aUoihWhDXneZdooOZ3wuAmm4eRREMRQlxNrCEBcdcCv0kTE9T25SlDYYtSzbETiJV
 32aV39q6rOmMRYlFki8QVlZ1Oicse1Ilg6Y8qm1zeFSP/Me8FZ9EIP+nsFdirr7ibVx9jWySJca
 jIwI5g+pTifqE7nlL3oZLPee/DRb0iyXGxyjP5AySKEcbIjuevYLiS3ZLxyRg9/yf3afIneGpL6
 65RRXSMcknSwOjLzE5QGYdrBSYbjyOg9vCxWGGjLOA9o912jBYcnTUH7ivRY88tGKEowYS1H
X-Proofpoint-ORIG-GUID: I8zbhTJtE3x8TAEVVeDNOv_V87egboX1
X-Proofpoint-GUID: I8zbhTJtE3x8TAEVVeDNOv_V87egboX1
X-Authority-Analysis: v=2.4 cv=T/uMT+KQ c=1 sm=1 tr=0 ts=68401020 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=FU6otyn0G4FSvijP6mMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=950 suspectscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040069

On Wed, Jun 04, 2025 at 12:05:57PM +0530, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> Make changes to update the PHY settings to align with the latest

Don't 'Make changes'. Just 'Update'.

> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Add the ln_shrd region for SA8775P, incorporating new register
> writes as specified in the updated Hardware Programming Guide.
> 
> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
> closely related and share same pcs settings.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  5 files changed, 66 insertions(+), 41 deletions(-)
> 

The patch LGTM. With the commit message updated:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

