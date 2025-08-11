Return-Path: <devicetree+bounces-203203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ABEB20604
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FDF016BAF4
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02E82472A2;
	Mon, 11 Aug 2025 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UCTMxnrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB6A23BCE3
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754909183; cv=none; b=iPH1JF9w8EEvgh195qY9eyD4y7UlUSqGi9ACCKxmpLOzISJ2hHgdjeJ6gllm84rh6f9KbnOf9+aNzjzseSeaY507DRQYwVNvkzTInlgXZdoB/5pE6Mxqg2MzzKtZQ6Lyphc3cYVyB5y8xaWyAMQ62gnVZ7OZBb3chP4QqyqGm3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754909183; c=relaxed/simple;
	bh=hIpIhI+Dq782DmocD1dRgsqRHVmepVB9EO1vCQZPW14=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A5c6oaqo/i3CzdZ6Y2MXV/h3nNLUKlyDauVqeg+9naDcprA3HoH6HR6v6strNclEY9D2mavhSzZdkV4LiAuQwcsIHAhK9euUKfq0g6h38tyG++awpikESHEhv8w8WhuVu+yK38jaSDJiJP1isAN7W7GJXdO4yfeZU2MJjvSUVtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UCTMxnrd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dC9O029237
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:46:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f8htCJxgK9LamUpOqKUewYZZ+4H90QWTRJft0U76ZI4=; b=UCTMxnrd6/16AUhy
	XLcrUIybjNmdTrEQtLxEjTdW4kVnAemCiLZq1Mb4vvfvnAmsCNlcAJQG3gQSUDMs
	IOSmdOxRgDiuVv7zveTixoNo/0Qaz5OKOCf5D6/jESnWnMLkbMBJP/eupYp7dpzJ
	/TtzQn2IELXKMB3PbjaKubG6Ii02IgISs8x/crwXGbZ87WBvK9EUkMlqMBFV1o4L
	zV05exbfyrflL0Cs9+jwTuCnT4czWbvzB40Kvu/l/EWqR1yw6kV5pSSUu2bDq0Uh
	8aSFkWOFNUA+63BXErWgWMMawYjQ9uVeN7u1LlZwIcx+TDfyQkNSF8TzMvTeut4j
	fdpHfg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmc0sf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:46:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76bb326ad0bso4209088b3a.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:46:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754909181; x=1755513981;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f8htCJxgK9LamUpOqKUewYZZ+4H90QWTRJft0U76ZI4=;
        b=ZOnNc8ARpLWIE3Y89pfqbogdw9KISo1CKC64qv3lLvdB3UKvAPZFKPfKEJh6qrIrr+
         3ZFFPjSNUtDerYItmIYRxhuISI7+sn4xL/HSLELfJAoGD6IgFXnPN1k9OjWJ3GIWvr5b
         sAFObJp4sdgeDVI2lOzUd7nbw+OsHh5wJEsc/iQawbxnMvYB3R/sloPKcsq+abIJqL6F
         zz6s4SeiViafRDjtUdTs4RM8zDnThgKP5sUCO/tfsvb3D33RzsH7uanfwIq3R/GtaHYA
         pKrpmpTcJpzGYroG805h3hsOdk32eY2jv4u5910MDxdrI3wKPW0gU8xbWKzREop8Cr7M
         9s1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDa6/+QsI526NOtenqCLauaYuifR4JH+1ncMTWa49o8JOvLHj69Zy5En8Rlu8kqH7ax/kIEeXKF45T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/+MsEnNgfW7u1Bok3iGVlO9OnbIUwyf5sJiIcmLQmaKaScyFh
	Sq5k9dagPsGUIMkUHOT/9MSK+CFUg1yqq98du+rF2+xj3LcnWtWbNIOe9IXztdxo4u+1kU3A15J
	qcgpKITk5IL1ckR8ABj5Ve5bar6JwbpyHEaExXXDvQ5OQUHueXHqtoFbPe8vNAkB4
X-Gm-Gg: ASbGnctaLPW/xqmukU/WwsfAUUgzAa77BI/hGrgUZQLGy965ANaBJA6nt2HRPBKSCWX
	T2Qut7yMzDB/NBXV0VqzMjMT5RDon78U/OnsykABbcTntaL8kbRO2up3CX6X0K0+ItrUMhq8OI5
	EkdS3zRDAQHzXBNDLgcqPqnqQF399GHR7yfEYD6AKdgl+h4ZxIMJPVMtJcwyqVhvDRjlsJY0L/y
	FPCKee1eaX6eeWoo0+16qDpTxHy+u1ciloOq67hQxj3MGO2Wfc+twNa3M8mJF5l8qG63KqNKPZp
	j7oZmq04qu3kashjngDhM7+eIkWY6ntRD+3kLyjA
X-Received: by 2002:a05:6a00:b54:b0:746:27fc:fea9 with SMTP id d2e1a72fcca58-76c46199f56mr16736323b3a.11.1754909180973;
        Mon, 11 Aug 2025 03:46:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpgDICoR0/7ZRQgRFsc5NvAq3BwKQx1UQi1crXpDDjlFgdgbPP/mebGYu7Qi81XEuYnSVitw==
X-Received: by 2002:a05:6a00:b54:b0:746:27fc:fea9 with SMTP id d2e1a72fcca58-76c46199f56mr16736282b3a.11.1754909180581;
        Mon, 11 Aug 2025 03:46:20 -0700 (PDT)
Received: from [192.168.68.106] ([36.255.17.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce8960dsm26421523b3a.34.2025.08.11.03.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:46:20 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden <scott.branden@broadcom.com>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250801200728.3252036-2-robh@kernel.org>
References: <20250801200728.3252036-2-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Add missing "#address-cells" to
 interrupt controllers
Message-Id: <175490917553.10504.5537940155167451079.b4-ty@kernel.org>
Date: Mon, 11 Aug 2025 16:16:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX/p6iAMq23wcn
 6DY3WRFDH6JUze9k+WNwIRhrLlL/tRd0R3LRTKh6pvdqYkkk+hKjsqp2iY55o0AogvcXIG3v0T1
 3IEX6F7MQPrBEI92SoCMoHuwcnTpCp18WVp+/bsRsCuCqHwtU2A8Fzsmq1jM0TsYdwvlRW3n9ow
 S+Pw/nyzM+xOvsO1cD1sSTvE14y7ve5zgzwUmkFsX0zKQKnBi2Josn/9KphOmtz4cHew42IcAXP
 TJj6bMdL7TVIP9guVu9fGeHeySdoGZ+NQrIq+Q6oE95ZgY7lhiWT8/waJXvvv8wlFaeWcg9am11
 P4R2/ZOGgLSh16cBImBPVjk7rmnDZut/keftM8GsOVfZh7teYHy+0bzdOidLPejB3jFwKE3vSRM
 9XVLhNX7
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=6899c9fe cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=tivzXH558BYE5qsfyb1zSA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=PmVlpWcjQJIy8_mLsCIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: N9PL6HRelkXLE_4g2vQbFyru3oS_9cfv
X-Proofpoint-ORIG-GUID: N9PL6HRelkXLE_4g2vQbFyru3oS_9cfv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035


On Fri, 01 Aug 2025 15:07:27 -0500, Rob Herring (Arm) wrote:
> An interrupt-controller node which is the parent provider for
> "interrupt-map" needs an "#address-cells" property. This fixes
> "interrupt_map" warnings in new dtc.
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: Add missing "#address-cells" to interrupt controllers
      commit: ddb81c5c911227f0c2ef4cc94a106ebfb3cb2d56

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


