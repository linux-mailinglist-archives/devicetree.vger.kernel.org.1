Return-Path: <devicetree+bounces-202896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B3BB1F300
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:57:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FA1F1C25327
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF87224225;
	Sat,  9 Aug 2025 07:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O8wl1XtU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F1A27CB21
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 07:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754726268; cv=none; b=fGM8ETZUtakPqrIDr4ZOJm8I6izQmTalxIR24zSusz1/PYaAVfnlY4Y9Ht/dBuYt5gg16n8tsXpe7ktLuvzmF21MoUeLlWnNOiicysqB7098FjzEI8OwOMI1EmNj8T3RqXO7isF6A+v8O5mnniXnmh67nikj3oCRl8VEt8/S8M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754726268; c=relaxed/simple;
	bh=oh4gA+jRg2Y2t6H6ab0cfcQsi8u12BugRfmwasOQoC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SIiPzGfVcOyc7SY44YDIjIxH13lVKl9m/9uYYlNvqhDUrBTiN/4WWJozz5Q/QkYb74YdkPRcUDnLIQk0ktoTNkw4v3+G28xLLk7YoPStFOpP16nFr6wS6IiWvGGkm5LxLcrMs8oKL8dE/rffy5OeXryoYUabLWr/TFPI8JLf/hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O8wl1XtU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5794minj025648
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 07:57:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MHkzIZBShOGt9MA7UVWK7LV6
	yMeWr/62GPPAqQE79tA=; b=O8wl1XtUkJSIBTGAs/rXFxl87pMLaVNnIkGRT89w
	xJrI3wYmKWuqGHbRJHA26CqzQ2X+kmk6apjFQeQNWIkMMU5Uj3/d3bZ1WiHA6lTd
	FHOa7PvEjU+45J514LX8sw8Y/FJPFDWZeGLxlyQ39OlBfWkPiAm8wmVFZKli4sCM
	w1chfhIpK+/pt2BoMByiNpDI6YbLsm6lWdjrw370lZ0Vex6unAudKZecPZ3MVwqZ
	9TpZXPVN1MPHnKsq4jq1R3JMLiF6EiaxuqCglsqvMCp/2kJCa12Z7EZZlc1jtQpn
	NV/6NfntYpTlo3fkLIhX5QFk5s/NCan4EiJUvVv2uUcjeA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dym9g70s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 07:57:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b0791a8e8dso80882741cf.2
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 00:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754726264; x=1755331064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MHkzIZBShOGt9MA7UVWK7LV6yMeWr/62GPPAqQE79tA=;
        b=MB6oKcVaV2HofL7btEfG7BfEF92tFY2T+eQZdkz/QfgIKCYO7HbZdzpKA9j+3GXLnN
         FpLiZ3xzzb+mpDZ9IIKOTy2rVyvUSDtz7t9N7oO6s3V6XJaoEa9gVA1iqhj+UhJY0yC5
         s5kthk/BEqnSQGvQJGDjacQACU33+oC1IPUqQ7LnwlhZ5WGjz8CKubPPosOHol8rPmyc
         ZDoAaFcC1IE2tI3pm/ziQPRqpm5TXYLLmYM7M/SWJijXHdHQKiKDRv0oH3YZmgTR60rG
         hqm1+TUNu0Jdflt2OhFNrerdDRjwTtJn0HBxtgUUJa0Z5KcY2G5KJU/LZ8+Km5PkOfcf
         z5aw==
X-Forwarded-Encrypted: i=1; AJvYcCX50fkgNdjcOe4X3pMC6b9hbl079W9BlFNzYQ3QhyL6EJKxjhS3HFD8pMHWP7U12B3KLO4LQfbO/fU+@vger.kernel.org
X-Gm-Message-State: AOJu0YzyTQDIa0T6KSAOYCzJzZMJmAuuEXd57K5zNBPjo3L0g4N+8uLy
	y4RH/brNSQFlOCZiNccYEx+SeLIW5yrafiTJukvjNLj4JLLyz2xdLYx3/JKA6+eE1JBKabRdwQj
	ffbQoYaNECMyEcj1mdpTxLcbi8Vb+EtfFGtIjXirXXkjMdjciu+CpEYZtKVCTazJ3
X-Gm-Gg: ASbGncuGNUqSeJU08+fnGBzOI/dX/LSxB1auEWnsd8xoijgRjgfVnvm+8FQP6cCIcei
	un7Pn/gZtpnf8DqUZaCBs2J1PUDiEjCRWtZ26gjZBG3HCI1Q6Mi6/PVxw2Ke8WmVzvfc1h+HCM8
	gJaAN7m8a26RxB8b+2CUsOuS8jGDtqmyS+af8vZt3YTp1ctotxrAvtOUQd7c3033DV1/72xVO8d
	aMbExZUJpzT5SCOfseJTKAFBkiPTX4h1794VICkkSIOdGar2bSFJ3OvidNR7bg2h34TTe2fUgwT
	Rq1JwI1ZJw+jbiUGeTf/XMSnIKPuL7jIoSbanymAPNPElzc2AEulv4XMFGJkbRJZitoYga82qKj
	4fAKuSgCzRvIhoSS/00RiMDCHh1uURO6hnLS1uFM7osS+pukT0uVL
X-Received: by 2002:ac8:5a09:0:b0:4af:12b0:57aa with SMTP id d75a77b69052e-4b0aec6fcbfmr80634351cf.16.1754726264331;
        Sat, 09 Aug 2025 00:57:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZcKxAQsU4y2qlurvBrtplQIY3fRhPoGV1bNNa+z2XGi+BVNOPWtwNB3/KnTtakgGNSGDEww==
X-Received: by 2002:ac8:5a09:0:b0:4af:12b0:57aa with SMTP id d75a77b69052e-4b0aec6fcbfmr80634201cf.16.1754726263912;
        Sat, 09 Aug 2025 00:57:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88caf6dcsm3327161e87.159.2025.08.09.00.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:57:43 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:57:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 4/6] phy: qcom: qmp-combo: introduce QMPPHY_MODE
Message-ID: <pcmy74pebeskhfactygabzjinpbcfhluhdx7rlbx7kds5wynf7@hdlkfpkg4va7>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-4-43272d6eca92@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-4-43272d6eca92@oss.qualcomm.com>
X-Proofpoint-GUID: LAd6NZt-0xfLbJkDQnTu_wYz46YnfqFU
X-Proofpoint-ORIG-GUID: LAd6NZt-0xfLbJkDQnTu_wYz46YnfqFU
X-Authority-Analysis: v=2.4 cv=YZ+95xRf c=1 sm=1 tr=0 ts=6896ff79 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ruQs36HUC5Lhap_3HWYA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNiBTYWx0ZWRfX3qoF8aChorR/
 z1ya6IYsyXUbSg5ydUbmTRfsEOnkcIs92dC8NshGzGiok7JWd53UgtpPfVoMu3lpdZJuB+9x+cn
 QkqcPLKnukWFGjfIXfTW/jCYpQiPs65pUAzhzdUyRWEc+TWnI1h/AeE0/6+/7DEgPXqtMFEbA0/
 5FFR6WNJK5BKtg5nZnBvUd6GrAwQfD66Ncg1XqRMP8ls3rVcPaSuMS9gFfSiUcWn1QugrHvyxqJ
 dKg62v9EsvcrxY2bM+WfdRvDFkTsfUWEO5lStzxb0TIK710H/mddBr6Bo6if6c+H41JyYwhJuQS
 NRQ0DWBlaIQhtiwpD2LBo3rUOSOGuUOMrsJKSEqDuvLy7E0nKERyFEkoIiK2Zi7I9pxiyrmUASz
 MwqxmBqw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090036

On Thu, Aug 07, 2025 at 06:33:22PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Introduce an enum for the QMP Combo PHY modes, use it in the
> QMP commmon phy init function and default to COMBO mode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> [konrad: some renaming and rewording]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++++++++++++++++++----
>  1 file changed, 39 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

