Return-Path: <devicetree+bounces-247231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 697CCCC5D2D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5ED113016704
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0FF248F54;
	Wed, 17 Dec 2025 02:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NyslCeIn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CIe5U8p/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF8621B185
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939800; cv=none; b=ptDZxoClaJvGgyQdGZJYGWvp/6nBX5CmW6oHX1GqQzF2MQ/19qZkmMGpAQA44osW/8GcuQKs0J1CBBNy3MptYOuft5E4012CwusMzPxB6ljFg5aS5ML/Q7u5WGBM2HDPNKjh/JKZwtX9eZaicvqpiEi1qj9oLIecT73fLN2KP54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939800; c=relaxed/simple;
	bh=XkpSu1q0nhFZDSD6CiHASNA9/JePTDpyr5781opAUho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=keSFH5kSoWkwn3FWbhh/NDglXsMzSjCWdJDyp5qP3SrCf3xRG8+IPbd2+DrFY7WOlKn5Iv5SIE6hshvm4x83xfeh6ne03y8HMIfoK3kEarM35RDtrMF0kSzk1tihIeIVLFl0pgWKwY0jsZmOnbq+NDkk9/+Gneu5ytQats9NNAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NyslCeIn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CIe5U8p/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGMRDUB890240
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hSr0hfpjiunYgxMiBK9XcZqGRzRse0hnRDW3pHNLDAc=; b=NyslCeInX+Gjk0fM
	u6NoYEZ0FK8v8b8aKBhyYySZqKuOBwgZVv0Yba0c4lDb26EX7e08BhrXTiRPmC+S
	L+5WDCo+eaqR0vo4SP2ABO3z8tiv8Md4Xq/JVzitm3+N2msl9m4vQo7rd2aL/Buh
	gKY7aIU+/cKYS2xuim4nT8WoanoAYbXQSN7qHO1bNUbczIjMpNH8ZDh3KzaV2SPY
	qQ7tjmvIDgZaVDsnmjxWs0gsT9Q3niK4YSy56V7sDUFNWwvz/XkKKusYMI0T+Qac
	L3UmzdPrvE5DOl0btg9HVnxvtXD+KVgz3i2iX7QZD8V4yIP8IWpTaOfnLx7MyAdO
	R5HM8A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34xd378m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:49:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e19c8558so1228127885a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765939797; x=1766544597; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hSr0hfpjiunYgxMiBK9XcZqGRzRse0hnRDW3pHNLDAc=;
        b=CIe5U8p/jES3quRVBapg3hMxq1gdmU2ROZEH2BvN+1QSkiMQm1dDIF8qeyNz3VQygw
         KA4gzD9VvPoTQ1esW4sF8bLAEdaqbxMZUszaZOOqqqRiQqNEeRPO8Y3xlO3B61BKU1qp
         VVnyk2o2gtCRiRPu+l6a1irci44RCEAhh4JOOZxtiUoMG3lgomy4o6vCiPTIo8OwlEDO
         N7ee337n05vDVhgXXjG6qG+THWe1wdXZr802sd+ZAKG6K5GxcCI3dlPQ2Ak+5f9MDLwz
         zWrHkq9A7ky1cvSR8pjitAisH1ZDLqWn/oV5Zj3xUn5ohaKl1faEpsaJUsCmibOpP5fS
         MtiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939797; x=1766544597;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hSr0hfpjiunYgxMiBK9XcZqGRzRse0hnRDW3pHNLDAc=;
        b=aqJvTzkgvKUF5hIpobLYnQTyYeDFZ3u5KWB2yvcU9k/E9EXVPgFOGD64E3a43ppYdy
         C0oW4vjwuYQZ/PzJmVfgiGmXTJ49c9kyTEpgyNXquzMxZFkDpdpyxFvfNMSC6PNTDU+9
         iTAjhbFGxXDNw4ZeqegBoFnHei5q9WuNWxRxkIrGwAaFDGhcZXqwMlDFPkahR3XnloLr
         AJMuzO2Y1JVDortu2TROFWc3E6ATZY9F2sRyvO90cO65Ly23MpmA1DgXMQJcWF4zAeKx
         CZc2I+8LgNSVNKsw7zC1UyubX8AhXzCWyCWFqnP4ZoLzvRhcpIOIGE+sOJ7iDWCdv1S5
         1b5g==
X-Forwarded-Encrypted: i=1; AJvYcCUGyluVogL8hpDBfR5wppWTux75M/pehDU+AFd+I8SMfACe8fAT5F2qoJ58v0OvXKUTODzqDHxwNqoE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Wk4ZB0nAOeu0XPufYzMBUDbptvOa5X3CCPYZmdDEZSX3gvtk
	vVUVLE3DNaAe1p8+CBCYWjIxiH4y/J6o3vkKc1Oa+i9hXRTsukkSQQvxDow/MusK2RBrgGdMdeu
	uuQ67ZMNfYWRIzB8LE4v1FeUdRink3OWv0j8chD4Up/0j06i4JtLn0/XmvKzfAFm0
X-Gm-Gg: AY/fxX5KZfyU1fPdvNMPfUB/duLHvLRP+NsCu7dqQeOJPE+nHyu6Hl70UIr7GNUt/UV
	Shps302VLAN8dmUozSYNJrcxczEpjYTBbeK99qJTCk6y066IGuDSDTyPSD/zkxVc1LmXLA1Yfh6
	lKeqeb6bbiJ4hlaLzrHoWvNoaruceMSK+KfJ7JG9vDXIV0g8mKaH+aODPh4SbxfntXUWXj9AkT3
	aFQZv7sEgmOKwx3fmowLts/4xxd+Ka8UZ1uVW8aX02GCaDRllzUvxLFMoNv5G6k9BckHnFyiSIp
	QdToOf/fA2pRz+VAC8GNh+bmMfDXwoGUh6TgGxZpMXa7ROxYBKMjgZuFV/9B0MgvVBjqkKJ2Xip
	e36Z+2CPRQVIr1REiVSVvKcmsJ5mSIAeeSPAw5rlnbdIHy/GmTiUyXgJMtXucXUblo5MBX6M=
X-Received: by 2002:a05:620a:191b:b0:8b2:4383:b3d7 with SMTP id af79cd13be357-8bb3a39b8d8mr2263083785a.78.1765939796920;
        Tue, 16 Dec 2025 18:49:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2V4Ak+bxZ+9N52X69IaSlBoRPk/4ZmPd66syl4awFyKNhqXPj5s78LJaDXi8BFnuENUUgfA==
X-Received: by 2002:a05:620a:191b:b0:8b2:4383:b3d7 with SMTP id af79cd13be357-8bb3a39b8d8mr2263079485a.78.1765939796376;
        Tue, 16 Dec 2025 18:49:56 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8be30d8a158sm312944485a.21.2025.12.16.18.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:49:55 -0800 (PST)
Date: Wed, 17 Dec 2025 10:49:45 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: yongxing.mou@oss.qualcomm.com, robin.clark@oss.qualcomm.com,
        tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
        neil.armstrong@linaro.org, jesszhan0024@gmail.com, airlied@gmail.com,
        maarten.lankhorst@linux.intel.com, linux-arm-msm@vger.kernel.org,
        lumag@kernel.org, simona@ffwll.ch, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, abhinav.kumar@linux.dev,
        mripard@kernel.org
Subject: Re: [PATCH v3 04/11] dt-bindings: display/msm: qcom,kaanapali-mdss:
 Add Kaanapali
Message-ID: <aUIaSVObQJCJH9Rf@yuanjiey.ap.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-5-yuanjie.yang@oss.qualcomm.com>
 <176579137354.1486530.823295322686100207.robh@kernel.org>
 <aUEG3TL34CM2V5Z+@yuanjiey.ap.qualcomm.com>
 <CAL_JsqLR8e4FND5LfAVB+cJDMiFpgBTKZtpEDDQiuQfGJu2LKg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLR8e4FND5LfAVB+cJDMiFpgBTKZtpEDDQiuQfGJu2LKg@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDAyMSBTYWx0ZWRfX2acSi6RZvE1F
 QrR8RzHrOPa7tejDvS5gEiiSXaW6sbSUOa2LRJDHjJQiHnpgw9Hgv5tqdCZRaBU63c7XxK3LM1Q
 N2nvY0Z3qY/GWNVFEVSSfTA7RvH7dn/KG2OkO+yJyYXpBnFtIlyiZZw1GxcEEvrRpXoWYKU1Nr8
 V/KDVUrZAnjTUy2qZAtUa1b0u0kDfCFMJQ7Pw28qmTuL2UAjtmLbN0jvxE5SGkbUhdtW4oV52r1
 iehlsTukhgWxBynSK1vpR2Z0J1Mn5f8Z3sUpRP082eztCM4GxjmLtay+LeaMFRIFOzxNROqpcYA
 JeTJekyjyMdyOV/BjQprYGLOj/9/15jlfDExsrYVjQ4Ny4LirqpBz01SenDKsb15pwWC64/os7n
 ildkdvBep1QZKFYfVBThNEaUhKy/og==
X-Proofpoint-GUID: 7KLh-INu4CVOHdX-gP_9a-0H-BAHuFqf
X-Proofpoint-ORIG-GUID: 7KLh-INu4CVOHdX-gP_9a-0H-BAHuFqf
X-Authority-Analysis: v=2.4 cv=T7mBjvKQ c=1 sm=1 tr=0 ts=69421a56 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=NpoKe9w8x2AnCwLKvqIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170021

On Tue, Dec 16, 2025 at 07:11:19PM -0600, Rob Herring wrote:
> On Tue, Dec 16, 2025 at 1:14 AM yuanjiey <yuanjie.yang@oss.qualcomm.com> wrote:
> >
> > On Mon, Dec 15, 2025 at 03:36:13AM -0600, Rob Herring (Arm) wrote:
> > >
> > > On Mon, 15 Dec 2025 16:38:47 +0800, yuanjie yang wrote:
> > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > >
> > > > Kaanapali introduces DPU 13.0.0 and DSI 2.10. Compared to SM8750,
> > > > Kaanapali has significant register changes, making it incompatible
> > > > with SM8750. So add MDSS/MDP display subsystem for Qualcomm Kaanapali.
> > > >
> > > > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > ---
> > > >  .../display/msm/qcom,kaanapali-mdss.yaml      | 297 ++++++++++++++++++
> > > >  1 file changed, 297 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> > > >
> > >
> > > My bot found errors running 'make dt_binding_check' on your patch:
> > >
> > > yamllint warnings/errors:
> > >
> > > dtschema/dtc warnings/errors:
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.example.dtb: phy@9ac1000 (qcom,kaanapali-dsi-phy-3nm): reg: [[0, 162271232], [0, 460], [0, 162271744], [0, 128], [0, 162272512], [0, 1024]] is too long
> > >       from schema $id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml
> > >
> > > doc reference errors (make refcheckdocs):
> > >
> > > See https://patchwork.kernel.org/project/devicetree/patch/20251215083854.577-5-yuanjie.yang@oss.qualcomm.com
> > >
> > > The base for the series is generally the latest rc1. A different dependency
> > > should be noted in *this* patch.
> > >
> > > If you already ran 'make dt_binding_check' and didn't see the above
> > > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > > date:
> > >
> > > pip3 install dtschema --upgrade
> >
> > pip3 install dtschema --upgrade
> >
> > After update package,
> > and use：  make dt_binding_check   I see the same issue.
> >
> > but use single check:
> > make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> > I don't see any error/warning.
> 
> Because DT_SCHEMA_FILES excludes display/msm/dsi-phy-7nm.yaml. Soon
> (in the next linux-next tree), you can do:
> 
> make display/msm/qcom,kaanapali-mdss.yaml
> 
> Which will test the example in the specified schema against all schemas.
> 
Thanks for your tips, will fix in next patch.

Thanks,
Yuanjie

> Rob

