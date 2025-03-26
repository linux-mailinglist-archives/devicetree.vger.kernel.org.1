Return-Path: <devicetree+bounces-161021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F751A71D77
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:42:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DDDA1733F3
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77A623ED74;
	Wed, 26 Mar 2025 17:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fexh2oru"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660E221504D
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010910; cv=none; b=YIti0RBm0bnj6ZVqfx7KfMAnDW5TYx3jk1rzo8Kj7d75KC7IjLlZSfS+jUdJauNbxl9xChKPpSpWS3dvMUcgQJ/5JzWkYYQMKaQyyi7TmsaSdNwI+mo4J75m1/rcd+9WUqCT1MopUfnkFSqigrwWY7EQUYYlQV85wr7ISDnuz3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010910; c=relaxed/simple;
	bh=VbMAnTpopdjLkmZXesRjVC8mZ8m6kPoSqNU934M0L50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p+xWRN8K7Rw3dHQ928xWm8xvAUbUUK5OZtQ+wAj6LAiSf7eZt6QxSiYRo+E7FupEXWIZd/FO99YppTyfvRdWlkboKboevF2V62yCrCYlOPkPkIgjyDvN3FioTZUYQ7d4NWuvxH1VEWDn1dSpnQtG7abF1ADqyTSMBCT6d5KQ/Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fexh2oru; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QF1t8Q004812
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:41:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AtUnXSz/pPSjd1StFFw///pe
	5D57Ql36lWJoHWVv3Fg=; b=Fexh2oruYqA7AuiHnh2DEl9WXCEYdshYebDWjZlc
	JGNFGWH5RHBhLhbjlQw/2B9zVe90qF3/7SCwNH67i4/Pr0glrp8WrUils6l08CMq
	5RouYJWoF6vaRSWO2odAH2W7iPx0PxJEv4sOPcl/psulIyAU6+o1Jp1yjapiPr1L
	KwkhCvR+ykjSReuDroCi5U5OmaemfZgZScRN01peHqUTVvGS5iBelFE5gOkQRzc9
	khDybEE2Ju7HQykeZVdshjfPwV3XkJjcemmh11uDcgQ2me7XnO7OeO2QgM7svRT0
	uCxlWmmwFe2GER1K0LgQBdPGeilrUGE0/eYqiMO5dUq5bA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmcydvw6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:41:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7bb849aa5fbso26280185a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010907; x=1743615707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AtUnXSz/pPSjd1StFFw///pe5D57Ql36lWJoHWVv3Fg=;
        b=G4UM4IMI7aJj4QeiiQRyaoDVG044w/5UEogQ4H1wQCCA7rXP/NGMJF64t1aFdOc1MQ
         WZpChVm6n3FJbhX3JVI+ExggXmzrY7n6vu/omhVqTb647JbN25ZZrLEqh7hx5MuXPNf3
         HgWqRnmQBrsMaAMV4TNwz9Hp0jbZ+B5SuoLw8DnLU0xGe9mCJiMERhJ0HjFTUgho1Dmo
         xq3TPif+ZV5ILZ8tAhFeoIxvwt0ZUQm/UufzqkafSkRjveRFTBi5SxW+7qVlx1bvZwxM
         xG+oU78IGrnoA/3fP7nZBegQkYdJCUhLYXte8Wv19JkGfythggiXjVM4+GRcwRuQI7bn
         82LA==
X-Forwarded-Encrypted: i=1; AJvYcCUuMdENuer18jWfxoaDXLzyxkSPoOFtPOEg1zlXmyozDx4lAE8uHxaaBdSZQNDpacMnn6p6YrmKyPQJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7cwyHB93LKW4oYZr1fmaL8CN6BQlVm88L7z1We3I0vybKHQZL
	Vl1yq/rYgxnmkCSH3cB96+WDfK/uNAYOEYbx14Aru6OAip4IQKt/coJT2xRCfFJZqyOpOF892qe
	T5Mk0Ha4Vw43R7/W13wITewWPOCI8WapzOFhjnPT5OvCB0bb3vB1Xcw1gu43s
X-Gm-Gg: ASbGnct+ODViPWA8HfEn4ookUq8noxMTCY4XrrS93jrq5GYhGserOHMnfo+gS33SlwV
	mfrikWLUL9tmjc6MFpjtpi0jioZGcW5srbiNGqJ7xn+r7muAm/wqdxHqFmJNvhIQf54PkENnJ0N
	K3CsWbS4UIDXySYbf3vD4L9O7wKFLDUQjyeWmr+aSlZzo1hYHuhgnWGYsg8sEvdiEwKg1anADse
	xBAg8y4WPG0Ytjfa8xs8v3hVNM9S3jS7ZBn0sU9vCyv9/+lbxIq4JbUPWIV9/yHR3soMacONqqi
	rDy0oPbr2mW+VUHmI5hOxco0p1T4ScG70UjVZf2e1oZFbaTJDaHtMM3dTuTtJalJWjSG6Rm3ISF
	zDzI=
X-Received: by 2002:a05:620a:17a9:b0:7c3:c111:8c3d with SMTP id af79cd13be357-7c5eda91760mr82460885a.49.1743010906953;
        Wed, 26 Mar 2025 10:41:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuqcfnhkzb0FRV+B6Fzo8Va+R5lmfJZjN21TrvUtVriwmR9+t0F3bAporcIBSfQDBEa+GQUw==
X-Received: by 2002:a05:620a:17a9:b0:7c3:c111:8c3d with SMTP id af79cd13be357-7c5eda91760mr82455185a.49.1743010906411;
        Wed, 26 Mar 2025 10:41:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7e0ebbsm22090901fa.34.2025.03.26.10.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:41:45 -0700 (PDT)
Date: Wed, 26 Mar 2025 19:41:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH V10 5/7] interconnect: qcom: sa8775p: Add dynamic icc
 node id support
Message-ID: <bpjjnvw4mkjieidi7ooukt7f3bgxig5ezyuhp4tjmufr77eoel@bwj75fjd3mxs>
References: <20250324183203.30127-1-quic_rlaggysh@quicinc.com>
 <20250324183203.30127-6-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324183203.30127-6-quic_rlaggysh@quicinc.com>
X-Authority-Analysis: v=2.4 cv=EZ3IQOmC c=1 sm=1 tr=0 ts=67e43c5c cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oKCiNua1F0BOgjzGbBIA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QwQJtTR3qpJF6iWKWodIB-9RWfJBUYsa
X-Proofpoint-GUID: QwQJtTR3qpJF6iWKWodIB-9RWfJBUYsa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=792
 spamscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260109

On Mon, Mar 24, 2025 at 06:32:01PM +0000, Raviteja Laggyshetty wrote:
> To facilitate dynamic id allocation, discard the static IDs
> from node data and set alloc_dyn_id in descriptor structure
> to indicate dynamic ID allocation. Update the topology to use
> node pointers for links instead of static IDs and forward declare
> the node pointer to avoid undefined references.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/sa8775p.c | 952 ++++++++++------------------
>  1 file changed, 347 insertions(+), 605 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

