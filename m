Return-Path: <devicetree+bounces-207360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A401B2F4AF
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45DB81BC20A4
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C012E2DC9;
	Thu, 21 Aug 2025 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GEKIUoI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B700A2DBF78
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755770254; cv=none; b=q5ZnfdAxvlMIDQXq23DKzygO3jZF5YuF88FrkF5Kn1eR+o06QtrmDEDxyrkAJwVdI5hLRwiAvxTKa8ELOqG+k76sf1fAwrSC7T13njcACR7ZUKbKbmE1MBxgeETclnlLmNmfwGImUa47hr6nOMlcVN/LwazeXAqUVHYVw3a1cT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755770254; c=relaxed/simple;
	bh=vy2/4IDxVTP8B1054laffR6LkPGsxI0lLeNGiepTPwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oA272mMQ6Th7wgjeGPK5UIWuCABPcmGWusSv1WptrYtptwJySTJFNIliosC6M3Kv5B+/urxjPPSxM8JeAS7wHkjcXCj3a54l1BLQmgie36sO9/TzJDBtBjQGmoQ3kBBfGP/Y7JH0cLysRtdAjMs5ToScp13AFFbFj5yIl1/IdJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GEKIUoI0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bFRZ031459
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g7PwJmWud4LLm5PEBKc0rhlg
	wmfYyGE456fNQ+YMjxI=; b=GEKIUoI0KrJX3ctpuKhvi/fCWZUkiKZNzLnRXHmA
	RF790C7FnptHnL8LvovYOR9qsce3k5T+jFLaHV+KgJLVyh4FQpJQG3O8gB9htIMP
	EX8bHOnCEamW0p6jclZb4yg3W78A5fbTLf3zJlstXJeciAl7ahRKFxurfIxxgH0w
	F2Ql9/N7HtQSwqL8FcvTbcmXfh4G1XUYlWNI1Hsi+bVG1TdE1Eav6nrJoGAgpqME
	MbAK8asuZKKaeRtz18XTy5RR9LuggXf2OtanGCCI33iCaUOnFXXQQpr0KCTEaEpw
	d2CIXgTFqB7oCEcJ68F2aJQSBEHSNjqNCpVMUBqwF0m8bQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52avvy2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:57:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a927f570eso17454286d6.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770250; x=1756375050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g7PwJmWud4LLm5PEBKc0rhlgwmfYyGE456fNQ+YMjxI=;
        b=iCOofTXXXI+a48Qa+KITOZjT9NZC7ODY1lhUX+WbUpH+Gy19QPdWyAjDSUOyVvEluP
         M7hmRtUVzw7P6FgMF5ffeheMPrPMPqlmVy0RBxsW1f5hR71eypO9IeAiSYZ3AOSmc6So
         u+6KMf72XgaP4d/SBEeLUcWD4ao2Z2wycysTYHdMJ4zs4uTE8T5prrojPvPhgx1zHNZA
         eF653dpUsU+40miwcgCoU+ZMQYt3WbTstSD+Zvrr9fSEsF2lIvxkgpk0CDVIyqNJgiAR
         A65vyS8KrkpYDelK1rQvjwOmSm6W/0cEdB4Jx+doT4HWhx1/6ZVX1SSfF5uVfaMLVK8H
         D4bg==
X-Forwarded-Encrypted: i=1; AJvYcCVw6vm1hHQvsVkB/xg/zJOjyLVdHgkInxOQfRRc6DY1u+reMXvhrZJNiyQ+1uuOxKejSqzSDvbvQ38v@vger.kernel.org
X-Gm-Message-State: AOJu0YzjcXkWL3mD2mavw3Ld8L7s2Ptg+rRs/cQe0NYCqRDblklPO0Z0
	etUb875AOPVjPLSKgE2O1Mw/O1CKjumXMhAjRq8hliGkx+986MifNOLGCx5m6oL2C3HdxrC5o0N
	Cj4tFyOYUNbsXVftccB2WgwlHKuhjLjs6O0oPh6SWu4XJAxXGv2D6kgC97pH8935C
X-Gm-Gg: ASbGncusU4/F6OM/fJCXMJL98RTcKPLP2GTum5BN4T+wv85L9AHe4DsZNnsK87ZOlT5
	kO+SQ/fnfHOT2DFS63VQ/uSiwk5Cb4fuo4iRoHwHu8rWp7NnQa/s8cnpLrOuYn2RWBRoddQN7Oy
	nqyoN59iuQCY4Qr0pNVeXVMHX5snAiy2P24tOmSfDzUK2vssZ/fV4Ytcl4m6hP+WV62w1ovZuh4
	MTid5MmgOrSuzHUfblJOd1xh4YwgrB6jNHsDvAI7zYiky6CaZd9l+B084891A2/XVqho6ZI3lg4
	WQmbwGJX3Gw2Sp87Ihq+a/66Q5rCtD75V3n49tYVQqDloP9Alrg87rLFVsDg/SHOQPDtlr6OIko
	n9ZVzhlurD+06LzJqWOS/WinGCU2Nt1wdomc1ZgCTA4fuc8sf4uiC
X-Received: by 2002:a05:6214:c82:b0:707:76a8:ee9d with SMTP id 6a1803df08f44-70d8904ec58mr14210466d6.51.1755770249859;
        Thu, 21 Aug 2025 02:57:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOEFy709p/UfP4jm6FhUpBzgWM0SGkek8iTlc5fP6qfmNzP7NFOaAd+rkmJecj03zIVotF/A==
X-Received: by 2002:a05:6214:c82:b0:707:76a8:ee9d with SMTP id 6a1803df08f44-70d8904ec58mr14210196d6.51.1755770249441;
        Thu, 21 Aug 2025 02:57:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41d325sm30632461fa.5.2025.08.21.02.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:57:28 -0700 (PDT)
Date: Thu, 21 Aug 2025 12:57:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v2 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
Message-ID: <utakatkrxgfggm2fo3rtg3w3t43vibqaomnwfsp5wi6okuxv62@sdsx74667hgz>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
 <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwpOYUlGYrGOy
 S+D+jWGrqlv2Z5JRr+CTcQotMotINUK5JxW21vGFNjnYFR4+lpPGK30P/0N9IagdrwWLBtCrIHJ
 MGhNJzeupaut37VySeufF8ef6fQtwaiWnxjA2UnFqzYRQzJHuyi7oHhpQQl5urymd6ayBgvMJci
 YR/WbuVGR9Iq1CyxzTan84/BzWhHnBRGO8k1vmhN18wmggw0NHM21PZzdnqjzKsHDwMt4DDzafI
 /4HYmp2ZL6PYUncfcQo9Iz1ns0X8wlv8TB9cNSQnyYgVLu6CDAYpvYId8grexeI9fDau1xqnUBb
 BMRQaqUTgYEqEWwcHjKy7gPDmyakartdL2x6IsunZQn4wLr4m25HcCcbPoElplnN9mM1/l1Zu1i
 bF8j3ts3GuIx99Z5m2VnToPT70fHjw==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a6ed8a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oUcIdNJcVQQXXIIADcgA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 0qebOBfAdmitcTn4AtldNYP0OOs53FAr
X-Proofpoint-GUID: 0qebOBfAdmitcTn4AtldNYP0OOs53FAr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 02:44:30AM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
> g5x4. Add the new PCS offsets in a dedicated header file.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
>  2 files changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

