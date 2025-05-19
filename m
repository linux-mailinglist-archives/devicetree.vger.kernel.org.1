Return-Path: <devicetree+bounces-178265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA60EABB2C3
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 03:07:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BD2F3AFA5E
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 01:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F069C190676;
	Mon, 19 May 2025 01:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VZsviGbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3098F6F
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747616832; cv=none; b=XBjNYsX+vLmDGUSxP50jI7yEN6w4RqpHXZQyH8o5D3WCMZxYngIqR8iqdhgzHuT2RvKZX5ztsXRaKjTysiZow6J54Gat2nRsIj96QlbqptwBUJTNJDOyBiXzHXoIogkFiVThGrcZ7muV0HY43HhOg9Eoq/tCoPp4KJ0nnStysc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747616832; c=relaxed/simple;
	bh=u3coNIEXcwpQF3VClyn+QPxuX3xpkCJDAeCZxa9HiA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZyoNLe4sXj/54OvgigkHzuXYZiXiPk1xqgLJ/VVfYI81NOjc6uQGGU31M7CEMpuH8DwMhVO1wDe0siRDsfdSL14TpYfqbjMEalJyK9W98lt1MDwIR0Ca8yd9XIV5CUutETITkpF/uLtAmSBYAnV4i/jGNcdCBJyy77qb32EPBpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VZsviGbt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54INDp5Y025244
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:07:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9NaSP65lkazc1pMW1ainLK3h
	J0x0G4klMCtgn2cCzbg=; b=VZsviGbturYRMZsqYAxoR+//1K79EaiMXT55ntD1
	f1EAv3eR+B8zpw05vAgQC6WrHac3JpMOUyKMY1nd8wBpoo08kmEzTQ5Viu6k9y3C
	JjKSjWKDzql7Daiz1Ng04Nv5dpqEhmvXG0EMXy4eEQBjc+nK0olJ+sgAI5S4wjx7
	zeaNPkaj2QSwHAj0OH9t6mYM3kpe8e3Te0klX6vgLYf8O+3rPygvd0DtxaOzYfu7
	niivAisE8nPtgs0+GyM17+AuVxZzBwjrT8DJ+9aUZ2qhm2BETVP7bDRlCosb9T7v
	4kv5Iavv5VYEovKQzhUiaps7Nl38qyF4xaXowQ1Cm//vmA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnyjp7r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:07:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8cc1c047dso20426806d6.0
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 18:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747616828; x=1748221628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NaSP65lkazc1pMW1ainLK3hJ0x0G4klMCtgn2cCzbg=;
        b=cS8uES4jIAYD3KYg+Rco+5HeEwNDAk1Jlt6OXq2dyGtP9TiAmfmqCNqsrPO0TPVFbR
         hOKyRzVqsVSqwM447uvUfVCsIQ5NA1smULthSbHPEStSLmpng47wlaBcC6hgWrhwDr9u
         memPwzff9+sk0kVaybKyVov7s+MvFrOcyVpeiyS52YonhIeSfjF3oRhYKqo5OUy0ZaMs
         jXR3TM7ZOR1imxCiT09DmQ+Pr7spwnDZxlHkzknWFumjxMzFEz7lgXziKPCJ4SGoGLXZ
         Qg/iZ4Xz1cuG92VIqNfWqaEOANa4E27HAz93cvc2Alwk6qQIGNG0Ze7ow2CEbPTkd3Ce
         H5/A==
X-Forwarded-Encrypted: i=1; AJvYcCW+Kcei9QWUYNGFQ+XjQ+cCQH0/ScPtZOr93trORw7LJsyGazX/OR1G6g+vdD+wYNBgtPvtJSpm5sVr@vger.kernel.org
X-Gm-Message-State: AOJu0YxhzY6NIO6MbvX6m7ZDSPdji5t8PK9VLCaktMkmX1ulySgANVjw
	3pdziFs6W7Yal+fmtIE4N1mqlgz1/RNwfeIfChUkPDRb1b6/TA0XY9f4IwnTXfKDqNieHZb8RI2
	8CWf09Zd2ECRCT6hwIcpPQaa/W0/H0XC5sh1unP4z/AEfuBNazBpSuS6JuktgiwGo
X-Gm-Gg: ASbGncvldb+alXKoBWTs4I9rpHPhOjF0rUYoRzNpiKPh4sRoUgdy3eQMucLCy/N2nl3
	BissGkDHYsbMcWVXF9OfVZRlg0cKsMmjf1Ne3Am3PhQQBbg3nMwjayi2a4wPY0Gsdgv0nvS2q/z
	5DFUMwrF9LHASNm4sUIsyoPqWHKS+tbaCYSv0eZqAf83pn0xguXN/hLm9z2JyGNlJn/6sY6cCvU
	sJGpxbKUdgaPjGXrrm4CFNq7gkswIg537KHYabctgoNCEre5O7jHySrLcd/T2br6rc5EsZeIYDp
	xqHZgXwlnP7NWv0YqEEnft1EnMQlu+G9p/ckolIH+iy+f+vV5tbWLzuD4f6FBmDbQJ4KSutqShY
	=
X-Received: by 2002:a05:6214:2428:b0:6ea:d629:f47d with SMTP id 6a1803df08f44-6f8b08f9a5bmr185310226d6.44.1747616827885;
        Sun, 18 May 2025 18:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqSJk/SqdkBbYqLR2IEs/FtCzb710T2GK5kX1TaRaCIGQhWa06z2VX/5aEjyY122E/NinQbg==
X-Received: by 2002:a05:6214:2428:b0:6ea:d629:f47d with SMTP id 6a1803df08f44-6f8b08f9a5bmr185309936d6.44.1747616827515;
        Sun, 18 May 2025 18:07:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f350b9sm1619828e87.94.2025.05.18.18.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 18:07:06 -0700 (PDT)
Date: Mon, 19 May 2025 04:07:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sayali Lokhande <quic_sayalil@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add UFS support for qcs9075 IQ-9075-EVK
Message-ID: <bhu7ifrgg4fgy56lc3ix37drxyciyzl46qkicv6lr4svjejcgi@dqdv63ogxtjr>
References: <20250513084309.10275-1-quic_sayalil@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513084309.10275-1-quic_sayalil@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDAwNyBTYWx0ZWRfX9yvAwf5ZcXaU
 bv3riIkD0q8DEa3zP2I/0z9lxfQNQTBGc28uCwUVnx03CgwGdyjYGRrz2Xtd27WSUfKtweb4WVs
 ZGoURaBM4VTtuou8Qo8PoOfInhwhUCsgWlZxshG8Y0wNiJ4W2a9lFyyYcSRZrr0oEwZ+Wi6l1gz
 VqUq8G1WuFDftV6IxoMUZ3MJHVEz+R780OS1CLDe2tk3rPRkrQHjRZzYFfU0XgDU4zPsg4ELnZh
 aplQG/QwZiIPvjv7Y96BYmIdXnLm0VBiDw7TMhe7/lOz2zpX4OJd9TAe5i82wEaGi4zaIINA8rc
 5BFi+f5rKF86aDk9a9nfF8FUpbk/WFtS5J/IJrBZhFFqQHkivJms1zntguobpDgwLJOnP5ZJkDP
 w4v2eT+Xpdo0wM7DpxWDO3dXcpAOMr1fe7s+1v0I9hZpBsJuO7/BqZ1rRBsGR4QQ9JpYNkei
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682a843c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=tguQkwLf3mHSJAPor5UA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CJ91vBzdf99KeXt_G7NQngRdIyVm4OyW
X-Proofpoint-ORIG-GUID: CJ91vBzdf99KeXt_G7NQngRdIyVm4OyW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_12,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=823 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190007

On Tue, May 13, 2025 at 02:13:07PM +0530, Sayali Lokhande wrote:
> Add UFS support for qcs9075 IQ-9075-EVK.
> 
> Rakesh Kota (1):
>   arm64: dts: qcom: Add support L4C LDO for qcs9075 IQ-9075-EVK
> 
> Sayali Lokhande (1):
>   arm64: dts: qcom: Add UFS support for qcs9075 IQ-9075-EVK
> 
>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> Please note this change is dependent on [1] which add
> qcs9075 IQ-9075-EVK board support.

Please squash it into the original patch.

> 
> [1] https://lore.kernel.org/all/20250429054906.113317-5-quic_wasimn@quicinc.com/
> 
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

-- 
With best wishes
Dmitry

