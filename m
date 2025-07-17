Return-Path: <devicetree+bounces-197343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF30B08DD0
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:03:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00C03ADD89
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71382DA76F;
	Thu, 17 Jul 2025 13:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LIIXC3wC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AC62DA744
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757270; cv=none; b=VCAwdE2qDRgBWp9T/MB5sWDmeBBTIJ8CCzFdM+VwediHF6/xpKZQI9GVPRIrlEWt4jJ8/7qQ3w883Zi9Xfvq0PqWiq1j1F54kEg00ZZUtv15pd9FBV+aXFmx9ec/ko8rDBO4wklboAwNdi5AAj5/7/yLbI7VYBKpyRMsZxy6whk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757270; c=relaxed/simple;
	bh=vCd4NQszFCL+6SR8GnfbGLcZko3d35aaKRkLZLDDY3I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=f5UO64J/6BvC3BgKhAn2Do2uJYv+O+NlA49hTD+K3bk4CSLDZreqD1xH6P91XkWklZIvPLSTYGn/dG2HoDR+/8t9A0Gp7dRz+/OfA5u8z7jpAEA4TuH5Cm1YbnGD9pjk/CkfC3dmgXz/4OAuY6yIoSf6RCVQxTQV7E4EvW+KSLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LIIXC3wC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBSpJX022251
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PFJBplyOVOVqVS5tVt6ls995i5hPEOXns8yrQXCIRDU=; b=LIIXC3wC7QRrPWcx
	IUNe9MczC3qCVXxrJXlHKb9xjnh5S8tkjxitUKgiJz6PpVuZATdtC6exphyLK54x
	3cE/Q0bbjV/aa3C5hru+eLKgg75j15vByV0S/mGZxDwiPZPKs5GvFzoswxyJ59pG
	ZWpMGk8OPdaR3TVWK1BhiOEzQWTG2zjThw0m/Q9pbNv7BPqXJqgWsOup7HdJRrka
	X+HWg6th4LNmYujUqNT5/1/biFmsCan6XMwdER0wsu+B1Rb6x3J91glMJ5nf3XRt
	C+ad4+4TFjhuYtyU2bai+jt/bK6jJ52ImixlwWKq9At+/1XuGvEgWAWUImu9dahu
	kVqGKQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy7mn0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23638e1605dso8067205ad.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:01:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752757267; x=1753362067;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFJBplyOVOVqVS5tVt6ls995i5hPEOXns8yrQXCIRDU=;
        b=Kj39HHkLSbIn9D6Qqpq1O9+WS8Mhrd06ZJ0cqLJu6qLr6w3KBou5vxk0dmTI06XdPF
         EAw5sEMeHd4MrqkB0bQcgPHJanN3F16hGUXTCnsX/cc2Ro/ywTPeYdN9vcqx8Hg6Z4mu
         d+HcNTv6iUuh18/tJFlmcdcGQMNj7WW99XeSf5uruRrIPdCURu+bJirVVADE8n15ZFeW
         HRjcaG8FW6w3cedzsld/fIUXuh3XfSz5AdB4UhFlijE4trOPPd0zb3CrnZOkumKhszr7
         A8HcjaPY5ukHhKaLqynl4hzAQPvVJOona5Pz7h934K/9soy9DOhh97ce3wUbCQnYAd8P
         FWPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV1+U4Zf40XB3AV1lYWmISs6OjavcMTXcRdANVn3n+Sp8NuaGLwntszD5IgXM4qBd/hADo6j5Kpgsw@vger.kernel.org
X-Gm-Message-State: AOJu0YzKKWyFBYY+azICryM8sDWUvtgrIYAmDV48lchqz5ij1a7+0QHq
	89y45b6tbdCJSnJ2L/otzbxHaKsVDBsouztlQqcxnEKPQPDuGjkG6r3k3kNFstRVyoLUAjiRczg
	N/3zjMk0RbvJ8WAJAtdmKnjrCRPMkGZ6nDThCeCDMrn47in7LmrzlezUqR4IrQ66/
X-Gm-Gg: ASbGncvnVsQokIRojuZXd8/6et3liUPlp8bg2OMsVeXFl17VOmsUER9eTHXVF6HPgr/
	9r4gj8J3Bb4r68RIiR0e7gE2qGmSU8E+7ioKavUtoZPdmb1AUGgMP+4M9OR8kErXOTQqcxkTucS
	4pltmYRf6oigOecCnunaEfqMNP0j3exSj8YEH3kPKKG3n7IWKzNUddYOJSqt4N36/9XMFpvpwzZ
	woAcol3CrLf16iKAJnLTsGCtFQr57YJ6E8hHa4KqosjJhuzPVYCZCrw+xVJj4GD/ZZbokxnAjOu
	Fhh9yMco3XoVxXEw9i2nEaVHwtSzF9U2VbPw
X-Received: by 2002:a17:902:f68d:b0:235:1962:1bf4 with SMTP id d9443c01a7336-23e256b7428mr85155235ad.14.1752757266978;
        Thu, 17 Jul 2025 06:01:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbS0LDQKlOsPFw7HKcHFgsvu6B+PBbBhY5qMGfKyMEG7qzr7920aAD1g7Ty4QSDMZORwk6Mg==
X-Received: by 2002:a17:902:f68d:b0:235:1962:1bf4 with SMTP id d9443c01a7336-23e256b7428mr85154665ad.14.1752757266418;
        Thu, 17 Jul 2025 06:01:06 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.63.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42847casm147179855ad.14.2025.07.17.06.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:01:06 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20250710180843.2971667-1-robh@kernel.org>
References: <20250710180843.2971667-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Remove 83xx-512x-pci.txt
Message-Id: <175275726329.8776.14270280128728418652.b4-ty@kernel.org>
Date: Thu, 17 Jul 2025 18:31:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExNCBTYWx0ZWRfX4gXRiv7GS1a/
 o9CV5hmFkf2qMmlLiK+fs5hjTFyjzg2rGhyFYUlZUpfQDsisxW5n0mFYyBOFiBNRNdkZ7lYAiR6
 wnZ+Zo51G1Q96qum4j8bOT2N9d5moD5MFgWS4R+VLmNkmqqii+oZywO1c0JaxqllDebwD4gTRUC
 X70Q6qz4M/LBgqh05NPSaT4Mwbu6B0139J8tTxwwonHoL6bRvq8aIZdsBq6mOBwoaA92QUJnnzE
 0tQtA9DBLuT73/+Kvu5GMlrN0lT3aFaDz6XgW7KCImGRcpJ95/Z9pABPHnygNCPBjigLFdDax5X
 4XcMZR5lkPipwosvPo5s8zuE9RK61YoxvBCrhkCA05H/V3hQoSj3xn6KKOKgi/4poxwvRnvTSue
 ewY7ElFU0b5/4NKlGHwD/RNn7/FvYuT16t1CIZA/QUE0JHzGmuRZG37ravzSCbvFEzwJ9RiA
X-Proofpoint-GUID: dwpNxRwPhmG_0DHM5Zix9IsA0D_OCrYN
X-Proofpoint-ORIG-GUID: dwpNxRwPhmG_0DHM5Zix9IsA0D_OCrYN
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6878f414 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=A4mJK6/VAfRUM2WLv3bxlg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=uwvIQ4CO5uxB_bX_CJYA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=797 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170114


On Thu, 10 Jul 2025 13:08:42 -0500, Rob Herring (Arm) wrote:
> This binding is already covered by fsl,mpc8xxx-pci.yaml schema. While
> the MPC512x is mentioned here, its compatible strings aren't actually
> documented and remain that way.
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: Remove 83xx-512x-pci.txt
      commit: 873eb218b39302654fca8251634da8f25d30c29d

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


