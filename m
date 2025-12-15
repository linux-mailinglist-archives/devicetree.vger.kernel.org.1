Return-Path: <devicetree+bounces-246779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0DCBFD9C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E27DD3050345
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652A3327BEA;
	Mon, 15 Dec 2025 20:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oDZJkovh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BN+nv3NO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED8C327206
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765831955; cv=none; b=smuYDKRlInlCMloR2Yy+XGKx6RP/3KZwFApflwBfmYPpNw4cihF+/bIS5KZwgCRsuEPX8Y+vTj1TpR3Y+GmYZcOlAHzvJxnifcsSb5p+1bpupJnFKyCnEEjh500XB+C5qJDlxS1K0xO8QeLvJD3ZK128NF3zkuU3GV4lOtSwGXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765831955; c=relaxed/simple;
	bh=qyb0szwfr7ZYPjyRtHDrozl0B3Vr7ddyIprU5J873KQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GW3DPAshg5DVlIpjRS4y3zHSi+0JU9GP2ORbVxoycZV4m/5VRUgiGbK2U0ppe0g9lCr0oie+9zUVn0fdBimhu/ydlDpYXiuKMZCx8s8Z/SJBdBYKyiDfH8klF4T2NywOyGPntfi8v0qhR7A8Eq6Pt1N2UnlVsHXxL1xz7MMFDPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oDZJkovh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BN+nv3NO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFKnJtC366700
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XLQ7LoQ8/CTmIBAWDpDu7tzK
	4curoa5oyocj/0FLnX0=; b=oDZJkovh7JcStoql5yuS+5zONGDvUF1wvaN6QbY5
	pob2eV3dFvVg9mcolIo/qyMjdiOspQt0jSNw4c1eJj7XBZLFUabhNp4kxbcIddVA
	MDxR5x4FSADp8oAfbeY2QsmtDQj6CxK3UXcnAEl1Pjdky2WrQCMffTwx4KzvjksI
	WzmQNBbY81hm/GOShRNGI66BQwx7bylBvlk2D4tYnOSJ39k7/9bfQaxusVZBhzhD
	YgdIuzWqBUFFyzSLRKWPYX1KlxksaCBCJQfKJgPyc6/VL7yvv0VXxfjFT/JF2WeY
	sRxKGA5t4+6E9ss5AimiyYfcbMRYZCaTpz6mi7y2jBkujg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2j1c1h9w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:52:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so81120021cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765831952; x=1766436752; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XLQ7LoQ8/CTmIBAWDpDu7tzK4curoa5oyocj/0FLnX0=;
        b=BN+nv3NO30yKt9Qh5/HAt2X66feR+CtCQF1jP4ogdoNhfT+YOp0IQr/n7bzDbOVkc3
         jO1JpAWQ8sj/Jov5hhthX1EgXhLArMWcA/MMxJM5aMwMQAYnkN1XFsvMUWxN9v4kfstO
         VafpO4HrUNvJ7QZM6IpzwTTbw6Yqzlo9KW2P5ZtxQtd1p9r9sRbukvk0rhEp1dVHwC+N
         kNw7MjkvUeXh2AuN+2kgFuHCguCXzrzqNZN/MSBUbe/t1UFsYaDBVOhCylBQXbI4EAcT
         yIpNOSE/4va6ELUm2wJVOh/3w5AcT3p0PW9rjQp0vdntulHjFT1rKzKPwlj3gxN/68/X
         6hvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765831952; x=1766436752;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XLQ7LoQ8/CTmIBAWDpDu7tzK4curoa5oyocj/0FLnX0=;
        b=csUxa+hWe7LiY/0jjj7hPfWSYVL7p7xwuFe0kztBk/eveD69WwOk1z0ii+vueTRvHg
         rKUBY0DdloM3CjRXUWGh5PrPGepVkJ7ZtrsByS2BQo4+9CrsSK/wsz1XfIsBlS4/0slF
         9/z6siZrl0HbTa5aE7Xx6gbpOBH2uxbUMyX1gkOXdqnfiIZO70Jm6vCJJt6GBcTpwTRJ
         FxEF8vKfDDJLKgy0atpHNoJx1OPnkPyLxi35qQrRCzAQCVpGY6DumlQUTUcdTxv0YMUF
         bW6LciBr7zjo13SGjg3yNQc8z8REhAfO18po/cmos3/hH+Lxb9bu8xILPqNF3Ue4fTiw
         4TdA==
X-Forwarded-Encrypted: i=1; AJvYcCX1AgEXULMvYddtGd9OLp3mQ/5WE/bsDKLsc0n0OuMOVLrjXSbrjER83YEMkfweNqXQnlxu9M1z6WXa@vger.kernel.org
X-Gm-Message-State: AOJu0YwOw4GTD6EyLsj5psERyd4GH0FSzg2qHpdNgNY0QDIgpjZ6TdVG
	iCeUcnlClIB3PQyZcZ8/rwNOdu6CK7xD5rgB5y6Lii5w7a8Sa+nEEfAGE8qTemm8sMu/wF6r8K+
	9QapKysbS+fumzgRWYL4O+0YghUn7Gvf257F28YUs7yAeNrWEAz8wCBnm+Ihe0taP
X-Gm-Gg: AY/fxX7FYWYflXWdb726ttaxRBZRaHZ7oJFMqV2dC0habSKVfxhk3I825p9ZO3sNUtW
	Hnxn1zVuJQ6+OmDcx1LtrDNFQLtD7eX5ufj+h58bjnjo++24hE9jK2E4JdjpwcgJSDvrtv5LM3/
	eRa8isyx7GsAgBDl9fs8uWR+LhIt7NXSwrxxDDUlYMNdWzwFLD3iP7aaFbJOHjOvzkFKo3ytd7c
	Vv77LZB9dMRNVOiiSSiXc0fU0rDJ0t8G78Bqw8Sg+RMwfLWA6T2XKkLl0QDTKLKN3eLbArcF0ZP
	+3MslGc0oWPDL4p4JA3LVxjCVec6/KM0p4jgsMMnvLS0iaAVlJ9t7pEMcXU87qvHXugIXUEy4gT
	OzIYhpDSNKhD5gV16uCoTjM1jgWixg3mmlaKSWHZxJBjzoC7xVSGnupaPriiZRSKPg/fdAcvNI9
	8Dh82mT4P9qyEyzXzFE6AHTIg=
X-Received: by 2002:ac8:5f06:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f1bfb9be98mr220664261cf.8.1765831952065;
        Mon, 15 Dec 2025 12:52:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGd555za9qNyH+D/h/1c4vO9Fu6GUCWOXb+OAovvIu3zQYErtvrMYhhZ+ntOg6X0XWZMv4nmg==
X-Received: by 2002:ac8:5f06:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f1bfb9be98mr220664041cf.8.1765831951681;
        Mon, 15 Dec 2025 12:52:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da503b7sm137606e87.56.2025.12.15.12.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:52:31 -0800 (PST)
Date: Mon, 15 Dec 2025 22:52:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: Re: [PATCH v7 7/8] arm64: dts: qcom: ipq5424: add nodes to bring up
 q6
Message-ID: <lxxrqp7jccgiiluidrioi3nnjuzsosi5elasj65miiuz3miop4@mgjuzoja7quc>
References: <20251215-ipq5018-wifi-v7-0-ec4adba941b5@outlook.com>
 <20251215-ipq5018-wifi-v7-7-ec4adba941b5@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-ipq5018-wifi-v7-7-ec4adba941b5@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE4MCBTYWx0ZWRfX0UAGF81CyWNo
 pCJ2JDoPCDXBwJrcnDl+SeWsOizmgL2d/JIng9GTKCDRH33juROo3mGRUrzT56mpkltTEQUUSm0
 ZiM/68UrIAvGK2Ejtu9ISY1teeiBk9cjjOhORz/ZZRnsWCehB+0HYEaz0jGX6Zxo4UHlruCt84/
 TKB3T40gQIztfVUjXYDGwP+6lwLQ/LHzHdGvle11M88om8K/nQ7Ig0Wn+0UwgkFqPdmDlLj4/5P
 HAcEJlzKk1U2EoLgRCpPfysnytOB3xhEEoJFKEoECbkxgNVVvARxK8KIQbdTf0wHGBOxzBoNwD6
 p+yLpfwFm+MqEDgKyHfac3sWJuyqYMjrCE6H0vHF4v7cts2dzhAkAfJsiDwV1KmXEhrfAGsgE4F
 20OpuvXoHjmHEKYjvl7wzqukPeXZHw==
X-Proofpoint-GUID: OZr7xa-HBGRpBuSxhSDiBBpb6CYrB3If
X-Authority-Analysis: v=2.4 cv=ceLfb3DM c=1 sm=1 tr=0 ts=69407511 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=unjgD82zaOGdZq1vsYsA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: OZr7xa-HBGRpBuSxhSDiBBpb6CYrB3If
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 adultscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150180

On Mon, Dec 15, 2025 at 10:35:12AM +0400, George Moussalem via B4 Relay wrote:
> From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 68 +++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

