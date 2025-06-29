Return-Path: <devicetree+bounces-190902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B53AED1CA
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 01:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 831D0170D7A
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 23:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C35241CB2;
	Sun, 29 Jun 2025 23:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eCgiDsJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3021ADA7
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 23:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751239835; cv=none; b=cRdVl2D/psDdYXegoMX3t3xSbWMmBmUAahyKgtdQlsAeAFT4OxVP2wAYVD8JrNyNHRRM5OuM4/9uofhk4sK1BZdHJN4d57ew0gZKTi8LlArU2ix7Dufuudqbzza5FdumHqrq2vcIz/BnYqCwN8eYUboZvNlkRyQ35Iq6bweiJ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751239835; c=relaxed/simple;
	bh=3AFvXCR+bLX+Z8GgWNplffmabN7kiO9ZobmutwiK+bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iEKdJpfGhoeuresDe1mr1vBdLZAzswUYXp3/priBl63sa4r9mS93alPsIb5019tVWL2o+t7/4/OjYbjGOswLEKY/+zP5edAM/3dZpaqetQpqDsgv6noFwHhk22h91f7Yjf8EeW3uLHzZ9tFKs5Cyl0KpYkJNjVwxDo9mYWzocCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eCgiDsJT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55TNRr4a010824
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 23:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=S2DTLYpxIRhT/nA6PB8/tp+3
	viSuwHeW5OhO23oo2lE=; b=eCgiDsJTEoNxBfqEo08mj8Z3xu+cN5h7tBDr2b7N
	GAfLLdTEIrwoWEOKSVxRyKmaPPg6Bg5wYMdLdMBnLqwlCNdUylL4WXTclVvRASzT
	HBT2ej0w30v3OjB7K5ETY4cdib2qw25vC4doGeC27MTV6rVRS5EZX7VDyM1XySHY
	Y1TDFEtG3Eob/cTpW9A5XE77tVf2RlxZQuW88rT7GWS+ewc6JUltl2quo4vDayea
	HM5bd/VegdC64DyKAtuAVZ2h9HnluhKHULQ2e1GxfcgxAlAHIKS9xvwcQ4koxuE1
	q7bFkZwk0u/0V0peYimRBLpjOH9nC/82j640OWh6Zhxc/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j63k30vp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 23:30:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d399065d55so525618885a.1
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 16:30:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751239831; x=1751844631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2DTLYpxIRhT/nA6PB8/tp+3viSuwHeW5OhO23oo2lE=;
        b=YYMnJmZcudUsABVBb9XrhyYNz/OjC+88rAib1CBD0SIC553KAHKJ/7Dwrbv6zzz8+R
         6UpPgjpMwPeSjv3C7lYjwutjcFC3YjngNm4ks3wGKFQ4E2X6CLLy2e0Lr13nUXMqsI0Y
         6OiEXQcX/ss6MVIpChXf28I5IxOb+DPYZN3IXnw00JMor7H1xclEyH196f1YqZgxTnLK
         dIHAJGWQLM9fOMy/ZXA6qrOdlUAdtH4CHU8o2spsaiCPLUgQQ6RaXftQE0vmdu6lSxzr
         w/kzW9xHdLmY2Tzxqukqc2YT+HKI53CeGW36H1GwLMOGClxrKMUkPwUAsLrwHVNwRkKj
         bGMg==
X-Forwarded-Encrypted: i=1; AJvYcCUlGMqjrHyHgEZaHo9zC79hY1Y18shIHS55UcNBs7uiJz5omNBk1BjY251mOjFEARujG59keo+foHvt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/FFiAKtqOzndX7UJQzZqiCMUzqeqRSjjHm7cbaRyQu1g+vh6C
	t2twM+rG/2HGJqJyHc3HF6241L57n+3pqoyUnXgtZI5MB/0SroxoVD0OmEtnyn5VnMCkkYmyFsi
	lwehquomAT+JiG2CsRRAORVuMkihrMXhRRP/Ixu46pR8E2J/PSNlz8YejsWj77KXAHEwmgay7mT
	o=
X-Gm-Gg: ASbGncuAND18BL0w6z7zuVNKWX/m9O1bMeHa9qcsdTP6BcFg+uUGLIxEjKwuXy204oV
	9+tpL/j40jvgfCjTeRYUVEmE77Oo8bJZWieP/FHxksO6Dan4bzk0X/6Cm8ck7D5U1evYvFluZnP
	ky2Ee3bwk86CH5GL4hZ5moYb7CpYXtGv9cBkc6yg9NJI3j/pRXS1eCXLkCC6wwnxxE+NpCVJJ7H
	q5F0Zj5+H1mpSJi3hP16nMzfVbsjEv/YdW/m12VM+fpAjFlmdk32DHfKNslIKfv7C7WUeuWarNv
	KNytwxRTVaJWpViYOtBvsq5ECG1Q0mcBRygYYCs3ZKW6e8X/YHprhbDE6dE9LC10uo/x2CdmFjF
	MTTYohazhuUI544CbU/Bv3wDRvLArRuQy4rM=
X-Received: by 2002:a05:620a:1d04:b0:7d3:c501:63da with SMTP id af79cd13be357-7d443985d4dmr1744006985a.48.1751239830845;
        Sun, 29 Jun 2025 16:30:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsLLpB2ln2NTNuxE8oAZN1AOX2vanByzGZqG9Al2zbL1LihsHxYQPgaiL9CfBNyLjW9EH3XA==
X-Received: by 2002:a05:620a:1d04:b0:7d3:c501:63da with SMTP id af79cd13be357-7d443985d4dmr1744003285a.48.1751239830424;
        Sun, 29 Jun 2025 16:30:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2407b4sm1245026e87.23.2025.06.29.16.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 16:30:29 -0700 (PDT)
Date: Mon, 30 Jun 2025 02:30:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add SM7635 power domains
Message-ID: <strdf7m7tjnktyzwcm3iq4bkhabzibxopeal77cnetga2yp5wy@amwkv63uoogv>
References: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
 <20250625-sm7635-rpmhpd-v1-2-92d3cb32dd7e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-rpmhpd-v1-2-92d3cb32dd7e@fairphone.com>
X-Authority-Analysis: v=2.4 cv=ZKfXmW7b c=1 sm=1 tr=0 ts=6861cc98 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=3owI59sVmJdHpXqbcb4A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI5MDE5OSBTYWx0ZWRfXyAOzlmWEWJoQ
 EpZCMUFZFzo4OmNJuAoOgOCTWYkrkfQ+vpbYvfGOHyrCyruvamaE7N6II9IU2n/moYlwod5ohwH
 OROwExOKdeJj4jS93fRcgUgWsO4nSP1c9Yrs/VMxSuGe1gMNkmW5Dwc0JJ7DZn1XA2bEt9EBn0x
 nDOXCNLoeRd4Iz8mpp21jbQdT11AKOdyUokI2eHYvQ3DfrSAvYs0i3igoyYXWcFGStXEcTm9hIm
 PkS4T7Yp5tLyyBcoq17oEPF8lxCtzbls5yEBkNrUa45eRD+RSFJ4nSTF7aJ9/NoQDxsIHBzhXr8
 Sl/pVj0JTIRmw0hsfzqf4RGqKJMSjcCJhkTc+tSeoRYiqmAuO4aUVFYVauyR5ibKQ00gxPtKY8V
 +kancPblLcRLf4DT/nkE6jkwnGH/sQiYjPT9fLvgluKsS2SHFQugnsTHIA7CcvhQk446U98b
X-Proofpoint-ORIG-GUID: wZZwJb5qaZk3juyD4zNvwdH_SKvirP_G
X-Proofpoint-GUID: wZZwJb5qaZk3juyD4zNvwdH_SKvirP_G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=909 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506290199

On Wed, Jun 25, 2025 at 11:13:24AM +0200, Luca Weiss wrote:
> Add the power domains exposed by RPMH in the Qualcomm SM7635 platform.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
If there are no renamings involved:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

