Return-Path: <devicetree+bounces-197341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72732B08DC5
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF1EA582384
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345411B0F23;
	Thu, 17 Jul 2025 13:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FRtvwMoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A9A2D879B
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757263; cv=none; b=FYVSauZksVweSIR1LpF0lzPcZ6gjtm3y4Ozulem+teopJkYWdXsgcQnIkY7SEZk1CDTFLKPNaLr/FZ7Wt11Mo1cX3gz1w92qwdOFuCsTdCJZd9fldLy1x97yjxtic/x9gqXPPVvv6UOSJbROyKMzOR/D/D4s+3+G8m8ycZcx/Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757263; c=relaxed/simple;
	bh=2FDz199gARCxPZHvHvQq+5S1+U+85yaw+86rSG7u2hc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FwUT/ZTfyTH+OyAMGyS4sN8prsyNlZU4vbPGbpD7cD2Qd6u+RBftkIwvKNGpw103WJ1zmQ1TLh+1J810ujlNitX0JizRVAp0u5plYO86Qj1ddN3vcaKGtXLRxgn5HUxG3YwH3uySZQpzlA7U8ve6+x0rr9wdcxAlaIFalB2LtZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FRtvwMoq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBXjpH028060
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hbhmXWPJY7pmHOFjqW3eX1bvP5tBeooNN1aFAxvXwOE=; b=FRtvwMoq0YR9Df2o
	xCEBfbJSCRwfBo1nRxKFf/v3wP2xzG6fKNUJkhaTxkh7vL0Q5ZuPF8YK8CzAvO2K
	qmDihKXlkXESsnvcFu0Ng7fYMHWLPhvV8GyI375FgPXsTogi2JgNov+c/4oXVZE4
	5fjv3CBAL33uHH+t4B4BrZVLgve90o4bB3hWMUzWJtItEHHogFEAn1FF9VMonUFo
	b4KvVTmpXxxfvctqxXfHw8RPXvCjsJSq6KsZXGhngPiT4hWOVwMcs8AggIInntqP
	uaWG2BQaOHMF78iByhdOrPqPKdJkMUQZ2zff6kCI8u0ESX6O6T8WPIyIXws6NNy8
	bmek1Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5yxts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:00 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311ef4fb5eeso1073153a91.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752757260; x=1753362060;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbhmXWPJY7pmHOFjqW3eX1bvP5tBeooNN1aFAxvXwOE=;
        b=ijmA0g4bV7Dkm3p2LVA4FNZEdJJUZgB5iPoDKby2qK1GTuMjFqQqY673Scyahemicc
         7o6nrJ4aTxakG3McOTshNzwNzaOnHpvL7g4jB8nEX0ELb9pudFncfa/N8/qJcmg27RtV
         sQolfh4RR8FIwr7Cr/EUbO//l6Asrb1vyr+5YwlFkstpn45UPoOs+k9c6G+oM080cO6p
         LWjYfttg8HECDrymNlS1kM/LOHj77Fqq993A/Zb9lqign/2CQ7BqdkIqi67a5uSnttQQ
         o/U5x9gqJfwJt+b1VmrrhxG5Fl5mDOyDqZw/CtZSdQ7RP2p4u62IUNAnxnbjKolz8hJL
         OOYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDJ+hVuiNc375i08RtH4NMuT2H9au84hGJ21KKo4gjLUIgXlYHcG1Ed6EtEU/Ed+DKuJdbyWTTrZ2W@vger.kernel.org
X-Gm-Message-State: AOJu0YyaJGse186xYGZ6lIjzfnhjBDTxCBK2cHiA5PCSvn49zDXIAfEn
	9sGePNqsH6pC22pQeGXZck6KVbjj19CEZohC5PtYAQx0dsx7GLLxQGRsXEIUf6BoZ8I3WbzD1iV
	tK8HrT6Dy3tM4hX+HWXZOB36sNBeNLba7+AIVyL8chK6kYJVdzDzkMfvSOkRDnAqKBtZX06L6
X-Gm-Gg: ASbGncsxuUhsj4bA9yyAE/IhCNnF2dV0FEHjJiCFd/P23oDpl8Q+JFjaTDddJhkyJFa
	eRll5av1sBpoj40eF3/DBWleoyu9wgwaIe1yRjsXmaSsG6z6NV0JZRVf90Tb0pAUcsIGzauquMM
	mnJvmvHgEWZh4kTdn/SEl4T40scuIRo/608w6rdbHMwe/gVJuZcqDrMDZSTBsZ79RiOSzQnX35z
	mRW5pibFcO9Sa8Au67R+pf6DnACQFGRUTxLmZ7hLQIjjPDdTUlCyP87FKKCRH8qmCg7XjRXh/z8
	AHuQB3B0GrAWFkvlyvBEHx+Gt7+98UeZschi
X-Received: by 2002:a17:90b:4d8d:b0:30e:6a9d:d78b with SMTP id 98e67ed59e1d1-31caeb969efmr4073955a91.12.1752757259481;
        Thu, 17 Jul 2025 06:00:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5PLDck2EGokNw2/kOyuLUXwXYjEIGyQ0OoopjlHKyIHHS+CdhEZJonc7VdXmvkZ+TmDh1Iw==
X-Received: by 2002:a17:90b:4d8d:b0:30e:6a9d:d78b with SMTP id 98e67ed59e1d1-31caeb969efmr4073883a91.12.1752757258849;
        Thu, 17 Jul 2025 06:00:58 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.63.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42847casm147179855ad.14.2025.07.17.06.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:00:58 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250710180811.2970846-1-robh@kernel.org>
References: <20250710180811.2970846-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Convert marvell,armada-3700-pcie to
 DT schema
Message-Id: <175275725510.8776.12544993424568474887.b4-ty@kernel.org>
Date: Thu, 17 Jul 2025 18:30:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6878f40c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=A4mJK6/VAfRUM2WLv3bxlg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=ZvBNaTAgAf9eIsPa14YA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: gBJ7kyG8NR7ZRU1qsfkHN6Oco7IqooHR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExNCBTYWx0ZWRfX7WUbv6iP1mfV
 BIoRd16phmXDBOvEH56XviaxSDITuA95ibZMhCzwoYhcDrgbLRIIEKYAsJ9VY8dhqeIceYL5cAQ
 4lVwa3xnRV6eDxgTUIwRXgMnaFy7eQxl4SHu2z0ILp9qRLLNEugPYLponnxnhuw2PaJ5MWF4SHb
 MnU0q0hsVh44jy6N0MRrlkvreJI4+GIv8b0U2QA+605+jzVAojJxolbPCh8V8LCxIuW/d3cIM3U
 u11EMgKjllU02EOhfbpF9iOXOgQ+NK0vW2HeooWUaBflO0tPj0E/eJ+WCs3HvI2Bbm76BEuum/l
 QJD0G0yu4285pHPuHm9PIEFTc8P2FzXKASR1ZdpXFlWVL8JQz472L+rUJOLKpMOhW9H2sNp11wJ
 cuJQlpZ7tNJ/0GugH/PjE8sF+dT+nZoJksiUN9vGIJK8wm6m2KfY0YLAUAbLkplv0zwKhpKU
X-Proofpoint-ORIG-GUID: gBJ7kyG8NR7ZRU1qsfkHN6Oco7IqooHR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=759 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170114


On Thu, 10 Jul 2025 13:08:05 -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada 3700 PCIe binding to DT schema format.
> 
> The 'clocks' property was missing and has been added.
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: Convert marvell,armada-3700-pcie to DT schema
      commit: 7d372e2a37af6e02a643f0be80020b05d29b45cc

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


