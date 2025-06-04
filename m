Return-Path: <devicetree+bounces-182690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A96ACDAB8
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05C4B3A520F
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 09:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774E22236FC;
	Wed,  4 Jun 2025 09:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fYQVe0Cs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0C719F101
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749028547; cv=none; b=XlLMUkkYCPVCh79iIU1lwoqYsJf+i1SuuoEab30nyo7sJysGeoVl5/j55PHzvd7yYfaZKHF0SnjPkhbiAJWZMQlAY5LTMZSwwXKPB6Kjj0nS0Y9QCP5H+Wiwvtu9lxBAYRJUWc8nmOUHt3vXBXCNsjpq/5ykP58tEY/9gv1254c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749028547; c=relaxed/simple;
	bh=wtbK/c960FCVkZdDZijesw0w08Lsk96bzznoaXRvUIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mNYkDpW/h+2uOb+VuLerk0pLm4h2/uIStcbr3EXY8vdEIJK2EuJrca95xnJK6jgiPc33SddC68mo8dpoKmbT4apwhkgBiefXFDbY0FFJyiZg4a11gkAhfT63iMYWs7ojPsTrBXXgwqYVTpCx25WlN8EH7fz04F97dr5mWZHupQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fYQVe0Cs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55487Fgm000708
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 09:15:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zPPFsiJy+20CJQxcYQxqsy1auSOoSM4WU5ICkQfU8Ik=; b=fYQVe0CsdVilowuY
	OtobuCzUw+CnRbC++SF4DuU9Va9Eu+OTxOXcS1buG/gbWuKVbWLUZNBDZpoRrG61
	VBbThzHVe4eMuCLToa1ss9SwSCZ6IPDpEsyT+oK5Y48SF6Uj8Y8NeAjj59IuzOyb
	1RDxtYkOnmC3Pz3blrt/1yJ94cQec+uH4OQT+kmwD4vXnKFzOULi8ySf5nFsh0L3
	IOuWN5w0wEoTFf9u2Bsk6QmHZZOnszQNkbjsthCIQkgF3aZpM7Zy14lukLAAQdhn
	mbThkmyZurTUl7r4Ce8lCbviLw7gnIFrn2DA0aCedQGL86UXsc2jOm7CS7d5sZUA
	Co5tIw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q5hu0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 09:15:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fad9167e4cso79824296d6.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 02:15:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749028544; x=1749633344;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zPPFsiJy+20CJQxcYQxqsy1auSOoSM4WU5ICkQfU8Ik=;
        b=avDvM60TVFDn3oei4A4YHlCrdKM6sSMjKh37cLT43bql43e3pUx2Eu7L1XuLeWFwYE
         XzdMWcZeRXQNWmnsyVQCgIyjAQAh6i+m1sTmKgp1+20Sfc3YmfKNaggrJo3ywqQaAPms
         cqWgr0KGi8J8HSFp0zaYnrR2rX8FLMHuN2uk7tv2WGRYJJYJkbt3fg7UsCOoz648OdSd
         wpMt2LrjADoe14uZ8hPVh2UvjnmzIr1ArJA5LQYr2nbFjJl9oA+OzHRSy3IOkVluCMj2
         vf28hEVkYnsh24Kx35nfgDek5gYAmnf6/155MXHuW6T/RCjKTiyUzBqzPaOMy6op0cZ+
         O2Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVOCH5MkVPhxewoc/ySXfsH+u98nNOZLbD5w2+RzZ+n8kUsY4MMC6RL1uwQqDOQj5Csh1n9M7DT7xVR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9PLJq6k17l7x3TFh05vl7kdT9TG/ZkVpVxWo6QFrtJ2oRgyMR
	rk46BErFtik5rL+KAJkDzXInDxF6NfyKuP/iIlbINNMUtySPUsIhye3SIbN0y1op4KEDeYLxvWY
	fgWlCcIfiuiLW245sGVf+jh0EeDpDfp2GtAcwRhRNPMHGh8rpal/8xZfe13dLP7C4
X-Gm-Gg: ASbGnct+hwfxHnkkmiHHvqzl+amjpg9EJqEwWcmBeeWq84Pl4+Akefk1xxhfMoLJJQI
	KFb01SOj4caW3S/hR3zcZoqGZu9gQoPPZ8kfujQaK//o9Nkwg3Zsj6yVYEvTOr/vz+m6HZbv9QS
	VosNMFk9GaWxviANr9MadcV0c3cJsae3tOm6nBz07n2Og2Ep6HXdGSPfnW3glWKGbzIEIGctSlP
	DCgme6e8jfnmN/c+fX6aOlg5784I3Cc5oPNG4HWfAbl4uwaZp36HN458TsCw+IBTGFydLt+hPQ8
	tBewrikty1VYrdBoQNkpGVbT0suqdARd0ZKM8A2q5QNymi5LJHxH+H+OwWQb/bSYiQRrq8pEi8M
	=
X-Received: by 2002:a05:6214:2a48:b0:6f4:b876:5fb8 with SMTP id 6a1803df08f44-6faf6fd1defmr26946146d6.1.1749028542941;
        Wed, 04 Jun 2025 02:15:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAy3lVFCTyFps38PYh4Cu1wvRMN2LoHwLW+6LfbUHP84/5730hlAgclrnqK6LGU+oqn6V+sA==
X-Received: by 2002:a05:6214:2a48:b0:6f4:b876:5fb8 with SMTP id 6a1803df08f44-6faf6fd1defmr26945926d6.1.1749028542461;
        Wed, 04 Jun 2025 02:15:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b55f88sm21033831fa.55.2025.06.04.02.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 02:15:41 -0700 (PDT)
Date: Wed, 4 Jun 2025 12:15:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
 <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
X-Proofpoint-GUID: 2zhyPb2zvh6HAy6pnn_njtbxjEyEaPBK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2OSBTYWx0ZWRfXyE+sOD3n+F6I
 QhnA+2xG2st4hRW261vsjDW2AQKEOG4pukDPmOmZsV4hLGcLOJmLyyJA+/nzOvwNR/ryzGM6abv
 7WEwF9MTRVCQImcHacLhp69oaEOf6nRhQQaFYxT9UvbBgHRCffLAY26lUmr/eRwGt3mYbg+iTWD
 JRZZGohFUOf8IlhQCL4/TMrZLoGPINyFn98NLbXUSnLjlsLD7z7lacBByPiA00/+VmSrQOwATBj
 e9V0nDWsRNUcpNjliyHlioJC5tRhGj9//KTozJcV3ffHpjOn9KAVUQomjlGJSvNNkHZaYo5qSgN
 5Q0Vdfi5Pr3q2c/Y6B1fsDVYF49n2BYkLMZPJs3Rg81tyeYEXqnWsC5pRczFc7A4KyNB74nIorq
 rKhoNy+YPZPgKViRI/41Fq1TUORQuN++sJnse649QBmlJwWSdZwLUevQgvptidFpXTSW+1qP
X-Proofpoint-ORIG-GUID: 2zhyPb2zvh6HAy6pnn_njtbxjEyEaPBK
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=68400ec0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=nH4wTwwcQCLCZoaC2lgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040069

On Wed, Jun 04, 2025 at 03:58:33PM +0800, Ziyue Zhang wrote:
> 
> On 6/3/2025 9:11 PM, Dmitry Baryshkov wrote:
> > On Thu, May 29, 2025 at 11:54:14AM +0800, Ziyue Zhang wrote:
> > > Each PCIe controller on sa8775p supports 'link_down'reset on hardware,
> > > document it.
> > I don't think it's possible to "support" reset in hardware. Either it
> > exists and is routed, or it is not.
> 
> Hi Dmitry,
> 
> I will change the commit msg to
> 'Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
> document it.'
> "Supports" implies that the PCIe controller has an active role in enabling
> or managing the reset functionality—it suggests that the controller is designed
> to accommodate or facilitate this feature.
>  "Includes" simply states that the reset functionality is present in the
> hardware—it exists, whether or not it's actively managed or configurable.
> So I think change it to includes will be better.
> 
> BRs
> Ziyue
> 
> > > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > > ---
> > >   .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml  | 13 +++++++++----
> > >   1 file changed, 9 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> > > index e3fa232da2ca..805258cbcf2f 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> > > @@ -61,11 +61,14 @@ properties:
> > >         - const: global
> > >     resets:
> > > -    maxItems: 1
> > > +    minItems: 1
> > > +    maxItems: 2
> > Shouldn't we just update this to maxItems:2 / minItems:2 and drop
> > minItems:1 from the next clause?
> 
> Hi Dmitry,
> 
> link_down reset is optional. In many other platforms, like sm8550
> and x1e80100, link_down reset is documented as a optional reset.
> PCIe will works fine without link_down reset. So I think setting it
> as optional is better.

You are describing a hardware. How can a reset be optional in the
_hardware_? It's either routed or not.

> 
> BRs
> Ziyue
> 
> > >     reset-names:
> > > +    minItems: 1
> > >       items:
> > > -      - const: pci
> > > +      - const: pci # PCIe core reset
> > > +      - const: link_down # PCIe link down reset
> > >   required:
> > >     - interconnects
> > > @@ -161,8 +164,10 @@ examples:
> > >               power-domains = <&gcc PCIE_0_GDSC>;
> > > -            resets = <&gcc GCC_PCIE_0_BCR>;
> > > -            reset-names = "pci";
> > > +            resets = <&gcc GCC_PCIE_0_BCR>,
> > > +                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
> > > +            reset-names = "pci",
> > > +                          "link_down";
> > >               perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > >               wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> > > -- 
> > > 2.34.1
> > > 
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

