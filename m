Return-Path: <devicetree+bounces-193347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F2CAFA52A
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 15:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4946C17A3A3
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 13:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ABCE2153CE;
	Sun,  6 Jul 2025 13:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NfFVCm3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DAB205E2F
	for <devicetree@vger.kernel.org>; Sun,  6 Jul 2025 13:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751807835; cv=none; b=ZUHrdU9gIU8Qums6YzRNjjRctDdMswhK6GjJx8IjT2laikBeeCPl5TLJ+8/iF18SEuE+UmYU3rz+T24nVUNzC08hOuzu0rl2XEpGKcwyXQmVsp8sL7X6R7nfJ/KEdNwbYB19IpWuuSuc50hiQ3O1nB0V6dDOjaWU7BlNeq+t/hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751807835; c=relaxed/simple;
	bh=qTTz9nPQxiJwRdpENmjn6LsyPlXW15ajO1SLMCtaUMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S/CbxERZp0ZKiaj+R2Kuk7V6BMW2uxkYZEQYOLw+VsCEqC/OHyl4hTXIAx6lVJHZdgvXqWTHjY3cp4JyB62KjNGtFmMEMERqXr++eV94a2p6YvM9NmCJbDovDzsy/h06z4J/nXKSKminqFGn9RYrG6sLqGRDJAEJfk255hK0l4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NfFVCm3b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566AhpvF023280
	for <devicetree@vger.kernel.org>; Sun, 6 Jul 2025 13:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EMu8D2urkSnttwu+eBSYfOFZ
	ChWl6OEMNQLTQc/BZm4=; b=NfFVCm3bAqCLeEFx8tbQdxy5LMQbfjsyd3BCCTIW
	57n4/QGTnma2PdGDKa9w1yxSV0eIvEHgudsaXT2ewHe9xxw5gRVMN5tSIlN2bhCs
	4vK3VIzN0LtBHUn2Fi7rtYsiBjao5MRw6wIIvTA+lmlMPaY0c80OsmuMtYSZfg/x
	PmAMPoMuKxpFb1lNAfF5xY7y8jhLHDjiCSYOQqgZxe0ct5BBGht1bg0m+FUi53IZ
	SXycJgGYJBDLOq+5NUxQjrFH+Yu3dW++5cXHFa5pE1YOscADutgMELLXCkRcVp+X
	NiQIxB1WuiuTbH8LJkfz6Tn0+DWgFfy+g/aXZQ3NWYOmXQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pwbd46wd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 13:17:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3f0958112so338257985a.0
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 06:17:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751807831; x=1752412631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EMu8D2urkSnttwu+eBSYfOFZChWl6OEMNQLTQc/BZm4=;
        b=wUn31J48ALK0FSX2WWzgFetD7kgnL38PcRJ1ePUHGz0LbDiEGryuCfFC7PmY4+QcZ1
         +qNLI7TWubdVkUsKmv3d6TCydAgl9GH+Gvr62VyJXU/j9OgVK4Eo5SOIXWsCW3yEyrw9
         pyqZ1WXVdedFVjcKg6DlVI9FV0bLXKGQbko2lgUY8I9+GH+FrOzUL6qDhSyUijdM8m8n
         +qLq+VdSq9WCXAFjIkplc+CA2I2Ui4J0h7TYZcxg6qRBzMv4NboypQqn9ZXPmk8lsVjx
         ot5ML+NkgsWx4IhDDVHHMgW1Mr9WhZip6KZKcHZ0UjMAh6jLYk9oiqj3KAVoGEke/k52
         Zjqw==
X-Forwarded-Encrypted: i=1; AJvYcCUeX+7wApnTjncXoV3rDHpLQYAirqYRCRWMuIkGUfnsN/qM8fkKlvUo5v8eBrBCNvkaE/FvOuVE0g4i@vger.kernel.org
X-Gm-Message-State: AOJu0YzIxgkCEVEFLH01E5jh5I4naVuETqEyBCdI+FFJZYNKJ2QGrlAD
	07yk+PBhQ1A8SHSvprNZJr9QQaG5Qdy94yLLiQvH4f3FF+b0fNDUutFKkFUeVMcRTMME2WwZG3L
	Zgyz4NOwzEN3qwmB7DJLQH8FiGzGI+xse9tvnR4TsGVaGAHm6Iza0n4z8po/wmYn/
X-Gm-Gg: ASbGncvJAnOx5jRD0JYZZ01s8WpXWIAnoJs7k61LZCHjIIQfhiPkzrZ0neh4Ls7yVeu
	+z/vYSqbSNpbKPxbgVXpteFmzv2Tth0xF1Z5Mw8pQYXIas0pUs7Tk3sssis3SKvXc2UBapOXmkW
	uXfcgKzcyYOtsRukcaScjfKPsFRhNXyMcNJ85qmIuWS3Gf3Pid+p3sBCdTfUCjp+tQ/SZ5P4STW
	phOPyAOTpk45zC3MpAs2kzCZqZJv1l4h/X10LfO31bMfJOHZUtGqt4s2TsH0jQqee7D/0uRz+aZ
	FFOu8dWV9Q68qdVKMYBObMcWWDBvqxvnhf87xLjVgLKbSUYiOsAajqFf8Ou+RTc5w8KTRPCe6UF
	r5i15sJYXWOw6k9KhMsw2O84ou/mJsUxCOok=
X-Received: by 2002:a05:620a:404e:b0:7d0:9505:1797 with SMTP id af79cd13be357-7d5f0a3bb12mr606566185a.4.1751807831275;
        Sun, 06 Jul 2025 06:17:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2HuT065tZ8I8BaaCuYfsYtZ4vVgMbrvNo6D9ps+z/dQZyU/3GSde1crlgPLIHhFHrrRmZ1Q==
X-Received: by 2002:a05:620a:404e:b0:7d0:9505:1797 with SMTP id af79cd13be357-7d5f0a3bb12mr606562385a.4.1751807830714;
        Sun, 06 Jul 2025 06:17:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55638494d37sm953233e87.117.2025.07.06.06.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 06:17:09 -0700 (PDT)
Date: Sun, 6 Jul 2025 16:17:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] remoteproc: qcom_q6v5_pas: Use resource with CX PD
 for MSM8974
Message-ID: <huvsqr3hxkeerjevhvjobfyxzfjldoawlgj6xgmdgf27kwbea4@ijh6gqbsa35i>
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <20250621-msm8974-rpmpd-switch-v1-2-0a2cb303c446@lucaweiss.eu>
 <hwewzj4ygfbb22vxrahjfc3b4oxyagh3nkd26bs3p5k2fcxr6m@mkgtyjkxz3d7>
 <226fd16c-8071-43c7-9ecc-9bd95e319aaf@lucaweiss.eu>
 <znv7ish4ufkgnzfwyxjt2ercdvemxh644zwpqthj7rtf5gb4fe@auvbeemdlbtk>
 <6733d2ca-f73b-4332-97c3-ba79377538c2@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6733d2ca-f73b-4332-97c3-ba79377538c2@lucaweiss.eu>
X-Proofpoint-GUID: uVVnhpXfZp4jR5h5uJT89juFQiKVBsvV
X-Proofpoint-ORIG-GUID: uVVnhpXfZp4jR5h5uJT89juFQiKVBsvV
X-Authority-Analysis: v=2.4 cv=e/kGSbp/ c=1 sm=1 tr=0 ts=686a7758 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=dlmhaOwlAAAA:8 a=tkrKlJn0stcreqTVr-UA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA2MDA4NCBTYWx0ZWRfXylpg2ZPLHmTx
 CJFmTqswLSEc5xgAKYvdsUJu0BaKUxcwKFO196quTTBYWUW3PeZwfAUVj7yqltqFlF+8rLj++J5
 MFf570ApQ2bDMk0U54q6eQ9XLkby82HaIY1kP2TP2pBQ4HKnWwIJfXfdiF0yrYwS2S1bhMQs4/w
 YkXCslZEjjiD2FwhmAWLg4rr2t4RaYbHx6kOk8Emjbj4LgibL1g9S9OYlHWLWsdxJUMa4dWUvH1
 HO/BzASOyACnMa9iP/uOJuSBrN46RwSCwO+y5QH2GfBl2Qg0IXA0TWNZ8mppa2Py+H5IdvzlCsw
 nNVSovS4lM/7plrzuXeqEnp2tBqH+XXE0d29OmlldFa3tHk7xHGHC441+nU9dxepHavihZVbAuw
 7lNMW3OEEYIbjxKzc8pGYmJ88FoUzQZzop19ib3cEC3q5rxXI2CzIrAUop4r4sUc9W+cZA01
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 phishscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507060084

On Sun, Jul 06, 2025 at 02:32:26PM +0200, Luca Weiss wrote:
> On 06-07-2025 12:08 p.m., Dmitry Baryshkov wrote:
> > On Sun, Jul 06, 2025 at 10:31:38AM +0200, Luca Weiss wrote:
> > > On 05-07-2025 10:57 p.m., Dmitry Baryshkov wrote:
> > > > On Sat, Jun 21, 2025 at 03:19:57PM +0200, Luca Weiss wrote:
> > > > > MSM8974 requires the CX power domain, so use the msm8996_adsp_resource
> > > > > which has cx under proxy_pd_names and is otherwise equivalent.
> > > > > 
> > > > > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > > > > ---
> > > > >    drivers/remoteproc/qcom_q6v5_pas.c | 2 +-
> > > > >    1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > Hmm. You are modifying the ADSP configuration in the driver, but at the
> > > > same time you've dropped CX supply from the MSS remoteproc.
> > > 
> > > The qcom_q6v5_mss driver has this support for .fallback_proxy_supply, which
> > > are used in case the power domain is not specified.
> > > 
> > > So no driver change is necessary in the mss driver for both old and new
> > > devicetrees, but the adsp driver does not have this fallback, so that's why
> > > the adsp config is updated.
> > > 
> > > Does that make it clear?
> > 
> > Yes. Would it make sense to implement fallback_proxy_supply for ADSP
> > too?
> 
> Definitely would be possible, but I don't see the point in doing the work to
> implement this, to then carry around a bunch of legacy compatibility code
> that (very likely) won't really be used in practice.
> I don't think any platform apart from msm8974 are going to be affected by
> this anyways.
> 
> Still same argument from my side, I think breaking compatibility here for
> this one driver outweighs the effort/code of implementing compatibility.

Ack. You have my r-b for the series anyways.

-- 
With best wishes
Dmitry

