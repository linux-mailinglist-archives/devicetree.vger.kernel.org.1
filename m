Return-Path: <devicetree+bounces-197342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F05B08DC9
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 155A15825C1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 13:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01652D9EDB;
	Thu, 17 Jul 2025 13:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z0gkORGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FC62D9ED2
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757266; cv=none; b=YCDVJkCo9XhNuyQfHjQVqcvEkLjAq78czW5zk3Ootiv/Rqfu6GQYoKC7XtJ0c8NjjOFOvoFOF/kFgxXjPtUwo7oQ5JbTns6ZqQm8ut4+AacVtuFaoFnvR0iJ6Vbk9ctdEcip6OcRMdDvERmBlrYv3HladeXO3rbYcsqIvJgrutg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757266; c=relaxed/simple;
	bh=6sH3eDRC6+5CeRl8Mp2RLafDJprCk7PzL5BrNhgsMqo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hMJCMHTrYYSmRbAPhetrPlojOpa7m/FqDzO7pMLKc8NBjUC0n1FpcKkiaK/1PpnE+QrMiXjWyMDwtHdkldmAk3XhmW2Q5UC5x7vTLysXWIUqap+2DirUCHJiAgXPx+fHlmo3UIcu45qU2ftaICAUf0kIt1ckw1II5KmO3gG9Wys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z0gkORGL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBSpJW022251
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U5UsuIaBIiPbuClHMuH4cTONIIq7r/pcY/6hVNc8gVo=; b=Z0gkORGLevPzWXlm
	vcy3MIRItHtOk71vKmNrXRumAl2/eU0FPxW4Q70JinG1rPuhQzS8hRL8b0IBZPXs
	INiXELfRkdR1z4+/7nRiH1PI8S/aW7dVdQp3FEGUZkd4DveCbrRFmt957pUXk6Q3
	/NjoY+3BEi3mNWfgDnlzmWtNHTYqlcMaGgO/HMEex9Or4Lo3HxNv2sGixEBpPJ1q
	ZY5VMfc1PJzzQZP1ZZURt4ZiPoFrkhDwu/yy2qH21rXgmR2ef7GA/hn5eYZjSOaD
	mBWGzXrklE6KIJ5vYT4cyEu2bLguPYfU8SZcx3tipCvvblS9AO5o/eWHpg6VqsJd
	fLkrvQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy7mmn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:01:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23507382e64so9477245ad.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 06:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752757264; x=1753362064;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U5UsuIaBIiPbuClHMuH4cTONIIq7r/pcY/6hVNc8gVo=;
        b=Oi0ijxJ/ziGrDTiE4hmlUrOKNL6u7ziijZwHpsyXWrU6rSYrXfOKivDPYUDychL6St
         eeep2D1VnOghUKCofGCL6Bc5rz4n14RtUdq8oABbPI6BId6cYosNhhTKVqfHNrD1QaqZ
         AkKIqiQ4TbNjqsFgSgYm6V84TuI2i0S0qi74MO1XE/dCXARnl69zBsdQ30JaL1OJNrrc
         Dv8HuLyihMW1ddk5Bp10NKNZ6fGx0CGE6qKtWl7C8CNWEJAZmY4+U0yFsqSzpWliuumy
         oR/k0P+9Prrj9dkgsqu5pnfN+MGR1YpQpTRXDmxEoMVU0xAx+hX8hlfxKmcOJNDvgAGo
         s3yA==
X-Forwarded-Encrypted: i=1; AJvYcCWpO/2yPsVMChmaaWZmedmPgGASqkP8CT53kGdG8wX/WFFeDsxj1Am0oV+GBHnJNpsyrY6xgGyW9H8O@vger.kernel.org
X-Gm-Message-State: AOJu0YzTHWBF3ZBregkiP4JMP3GKEWx+b8FjhjIu1RwWYZGdcF3BmVZT
	NQLmHfsG3oF07/EefQLqdZynvqEfp5hj1sr91BFQ5RbL0cMSStZJVOwMUEnWc/gZvkkXSgLmxPj
	gtKpcUavrKnWigJ11hZ9aZFUdVthoueSmcWR5Masnu1k4XuzHZZSeeBJM7BKGA/xt
X-Gm-Gg: ASbGncuXw8gDQ7IndpzqOL4Uk2ZV21XovmXV4S2wZgSd6CQklUTxxcwVdgffhjKs2+W
	YcxWv5JfjKfVOZBwUG9syr8qg+Y/cbbLCT6LwllxXaOuLxlFfz/4OiBa9DZdgVs4QFtK1JB0+2n
	n3hKpi6jC33z9tGKuw6OBL8B5+5mutNFs1PHVA6yauRE/jrA/FxlfVaHif58oaATxpQ1EXwbT16
	T2Hb3TrB41yg7OoWOc3lknw+G8T9wThzqJOHn51Nkb5MneB0vGPRxWzBptmmS9jAEVzgiir6l2G
	A4QnfkQAlRNXyj52pv/lfFePwScicuPBWNnO
X-Received: by 2002:a17:903:15ce:b0:23d:fa76:5c3b with SMTP id d9443c01a7336-23e256d7899mr91658235ad.22.1752757263539;
        Thu, 17 Jul 2025 06:01:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9ASpEXpTUCQBu6F8TSsn6R6L7kJf/fCt8R9NgupFXmGH52RNLM663t6kjqNInnvawgUpfzw==
X-Received: by 2002:a17:903:15ce:b0:23d:fa76:5c3b with SMTP id d9443c01a7336-23e256d7899mr91657685ad.22.1752757263063;
        Thu, 17 Jul 2025 06:01:03 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.63.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42847casm147179855ad.14.2025.07.17.06.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 06:01:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Jonathan Chocron <jonnyc@amazon.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20250710180825.2971248-1-robh@kernel.org>
References: <20250710180825.2971248-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Convert amazon,al-alpine-v[23]-pcie
 to DT schema
Message-Id: <175275725909.8776.7592079694757871720.b4-ty@kernel.org>
Date: Thu, 17 Jul 2025 18:30:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExNCBTYWx0ZWRfXzGoKSEBiW3eI
 c7s0SGVASSgFu4aOqdQeKK9kUcjzT0wK9md8Q0ks876l4+lKRuFgcpNYGqusSMPt3RgRNqw2W4D
 f79JSkHjWGiqD3J3Zfc46uVu5s5Alc6b1wavGD6IP6HpF75rNg16zNgq1+d8XvyNBqIXn53Kpk4
 zSzaAzuyNkVonLpE77uWX+PvY+PLUJO4juCJIqcJIv1QXW8KbopQ/MFIpxYxGkDwDh78SXHtLRN
 FZv8LVwF7bikq484HMsdzBcA21M/hh6PJbKmlXev7NZaVnF0vVenvDgzJk+F10goZRQF7N3qE5X
 jKIGIaCyrMKugOfylfSlxJ2tN+mvFMXRQ/8rgcDSTpBGbLU8OLJFWh2C/Bucxo+46/KTPC8kERq
 2I5YlB+hULUD2Po0Ize9orU47Dl5sQSHAHGuyeODPhXbDa3iDXbNJiIw42gOkutcF/wFt1FC
X-Proofpoint-GUID: _QCN-NLWmFHYHjZOvpqvwyUDSOPGdtyn
X-Proofpoint-ORIG-GUID: _QCN-NLWmFHYHjZOvpqvwyUDSOPGdtyn
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6878f410 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=A4mJK6/VAfRUM2WLv3bxlg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=7zflxYQyjF-TGQw7vmYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=902 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170114


On Thu, 10 Jul 2025 13:08:23 -0500, Rob Herring (Arm) wrote:
> Convert the Amazon Alpine PCIe binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: PCI: Convert amazon,al-alpine-v[23]-pcie to DT schema
      commit: a4fa6a0c4d26c8a68b288c833f53235ebce8b6e1

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


