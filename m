Return-Path: <devicetree+bounces-154258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3734A4F7FE
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8E62188FAEA
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 07:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE951F2380;
	Wed,  5 Mar 2025 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hDAGl+/m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133931EA7E6
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 07:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741160194; cv=none; b=ualPHmhI944Hiq0VdLr6517MqyZg9WKh1V4HWztikm0egw3Y7JCDZTunlltVBOzajrQpNzm+4UsCOLrM0Hk5yMHspYYBbgcy8Ii/0Csc0/rbOeNsMAPSha9bcK4DAvVVgqE5mWJZv5npYE/qXnZLexPoEUsDQTccaSQMv4W2EGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741160194; c=relaxed/simple;
	bh=BTVy2qtZxarzMPWFhSUSPZJ3OCz22mtLdewDBNlhhWY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iXqCsx6wi0GcQNs1D1sDsG445ZDdO2NAB1VS0WGaQP6hPP4MpiixDIBYhjEdUWCTSpEHqfxCn8S8IFKkzP/pdYDK9xepWyqYMssaBZTUOLfhAJQvJ4tDXqx/Xjtdca2PDD5aiPDGwkIJNGflrzuRWtpLfwJTqLFvjE+CXE/Rzo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hDAGl+/m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524NA2la031267
	for <devicetree@vger.kernel.org>; Wed, 5 Mar 2025 07:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T1d16P+U/rXcTJW+B5kAc654
	E3IZiLRurO5HUBWmlmQ=; b=hDAGl+/mMCzOFP9OeK5dqkMi0Rl7fk5sEiJJQLz6
	lwglXtry0wIfXPc9cLb/gy1yGVM7O/0KA6XkjQTrtIbcPwpMStwJy7MtcwjeuV2f
	t5O5jFBVHexsOt0YYpXBX7be6Fnb1pkZGJpFEzoaYDroVlSeqSVDVyk4/zhCOFIQ
	aIwte6gt7QNqj3w9bB8KvJznGcZMM+v2C7YzpaHR9dyAJBAI+0l3srBqTNx5IWgs
	96le4JCIIIQYkes5zKxH0tDH7k9U+4kp4EJepKBUGm2I1/d72Kqk9Bcej3QlHdQy
	jwtMtS3ttyX0rUovlxNtdiG9RVoYD4ihMmV4cXlnaDq8bA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6t4hv8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 07:36:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8e171fd66so32035536d6.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 23:36:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741160189; x=1741764989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1d16P+U/rXcTJW+B5kAc654E3IZiLRurO5HUBWmlmQ=;
        b=xPBCBcu2vMykfJkIq6cFpeFVLEaQunXpkqwA6k2vSG+ZTGR0LfKl3dCL9cGnHZVL/N
         1q6BXUZ98Iix6X0+g/A0zJKv80ZOxjGImxMiDaRor3Nvyly5Ora0PP/1oQEFiu4sHWlY
         yAv8CXB9yRUrjE5BVbtBYr7LARyyylGbc7lunqNixJMTo37Rt57mKdJkvMzLo9A8Kmar
         iGjf6wgUNx8+NphrvWW7e81NKLbRBRk7ErIYTx2m6WwoorVHOHz7rW3uPXkwwIlm13QC
         0zMLsBACAFcljygmKW6fUklVDg8luYFK8RuzeKrRA4abSlY7E9SoBuqdD3HmlsSAPeDy
         3Fjw==
X-Forwarded-Encrypted: i=1; AJvYcCXxQnv1s+2WBJb6FcBsN8YDU4L3XxzTfuB4bYB5zcnKJaeYPK3/cF1F3rcr5rRrkrxOoOTz728kRk//@vger.kernel.org
X-Gm-Message-State: AOJu0YyguVHVq4gxcaY+piIXN79sL33QgpoclSS+pJ+EE8IgXwUM7rE/
	7F4IfKWC4I9UkT8lEMOvIeDvWbnzrWyZrnIAgcLi+l2Ge22IxuVJLsSMUnDPDq14btNGQuJnD1y
	Ks2may4r+/XOdxqF1zIEOqsocUPoaJlddmbAPiSQCG0ff2S0zs8BlL02YwrZ0
X-Gm-Gg: ASbGncsQCDiiNoJd3W7qJQ4JMxPsgwEoTiwqtTJ7RZrFQbpvptTeNyheRbiIPGx/qcy
	PRXkJx5nboqcbGRopLZVUZJMVNw5vwR9efEHviV8JBBZImLSMhK/AH0u3rTkBWAOooam95noPYN
	BKACWlYvZnGa6Eng08o8hMJv/ogsgum7lR3P+oxOg7KlJz2nNLlDYviTCnkQwhbFrA51HnIhk9H
	lA5lHGHYu3PF0de5UTBBT51oA7KJlp70tmRkr8CAZTqbs6Ld6omLY64Yeb8g9U1lkwYrUp/87Rt
	Uh7huxfzGsLfCCgffGd6h3n7GO//sWGX0IL6IDCEXNAW8phy
X-Received: by 2002:ad4:5f87:0:b0:6e4:2f4c:f2d2 with SMTP id 6a1803df08f44-6e8e6d3585bmr33462156d6.31.1741160189295;
        Tue, 04 Mar 2025 23:36:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEg7o+3YrqSXsCnQ/x9TphdfEbcLiAgOEKHpqGxdPXvtfHan6pbMvY6utfj+hLuaIquk3bL0A==
X-Received: by 2002:ad4:5f87:0:b0:6e4:2f4c:f2d2 with SMTP id 6a1803df08f44-6e8e6d3585bmr33461786d6.31.1741160188837;
        Tue, 04 Mar 2025 23:36:28 -0800 (PST)
Received: from trex (54.red-79-144-194.dynamicip.rima-tde.net. [79.144.194.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd426c33asm9222345e9.3.2025.03.04.23.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 23:36:28 -0800 (PST)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Wed, 5 Mar 2025 08:36:26 +0100
To: Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 09/10] dt-bindings: PCI: qcom,pcie-sc7280: Add
 'global' interrupt
Message-ID: <Z8f++i4MFku8ODKf@trex>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-9-e08633a7bdf8@oss.qualcomm.com>
 <20250226-enlightened-chachalaca-of-artistry-2de5ea@krzk-bin>
 <t34rurxh5cb7hwzvt6ps3fgw4kh4ddwcieukskxxz5mo3pegst@jkapxm6izq7p>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <t34rurxh5cb7hwzvt6ps3fgw4kh4ddwcieukskxxz5mo3pegst@jkapxm6izq7p>
X-Proofpoint-GUID: AxFXfJoIWllouIis-EMRMf4bHnh0WnH2
X-Authority-Analysis: v=2.4 cv=KfMosRYD c=1 sm=1 tr=0 ts=67c7fefe cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=cl0az7d0LwC7qAhl51RXhA==:17 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=9WSsZrPlu9oLnKen9MIA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: AxFXfJoIWllouIis-EMRMf4bHnh0WnH2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-05_03,2025-03-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503050059

On 26/02/25 10:29:43, Bjorn Andersson wrote:
> On Wed, Feb 26, 2025 at 08:32:42AM +0100, Krzysztof Kozlowski wrote:
> > On Tue, Feb 25, 2025 at 03:04:06PM +0530, Krishna Chaitanya Chundru wrote:
> > > Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> > > to the host CPU. This interrupt can be used by the device driver to handle
> > > PCIe link specific events such as Link up and Link down, which give the
> > > driver a chance to start bus enumeration on its own when link is up and
> > > initiate link training if link goes to a bad state. The PCIe driver can
> > > still work without this interrupt but it will provide a nice user
> > > experience when device gets plugged and removed.
> > > 
> > > Hence, document it in the binding along with the existing MSI interrupts.
> > > Global interrupt is parsed as optional in driver, so adding it in bindings
> > > will not break the ABI.
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > ---
> > >  Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> > > index 76cb9fbfd476..7ae09ba8da60 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> > > @@ -54,7 +54,7 @@ properties:
> > >  
> > >    interrupts:
> > >      minItems: 8
> > > -    maxItems: 8
> > > +    maxItems: 9
> > >  
> > >    interrupt-names:
> > >      items:
> > > @@ -66,6 +66,7 @@ properties:
> > >        - const: msi5
> > >        - const: msi6
> > >        - const: msi7
> > > +      - const: global
> > 
> > Either context is missing or these are not synced with interrupts.
> > 
> 
> I think the patch context ("properties") is confusing here, but it looks
> to me that these are in sync: interrupts is defined to have 8 items, and
> interrupt-names is a list of msi0 through msi7.
> 
> @Krishna, these two last patches (adding the global interrupt) doesn't
> seem strongly connected to the switch patches. So, if Krzysztof agrees
> with above assessment, please submit them separately (i.e. a new series,
> 2 patches, v5).

um, but without these two patches, the functionality is broken requiring
users to manually rescan the pci bus (ie, via sysfs) to see what is
behind the bridge.

shouldnt the set include all the necessary patches? 


> 
> Regards,
> Bjorn
> 
> > Best regards,
> > Krzysztof
> > 

