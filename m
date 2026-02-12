Return-Path: <devicetree+bounces-265013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJqMJxGvjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:44:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4DF12CA32
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31762304209A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30542EDD6C;
	Thu, 12 Feb 2026 10:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fjpTqENW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q/Ywy58F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512EE2264CA
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893067; cv=none; b=IKKUAfmlXg3WEXX7D3F49QVp5Lkq9NicdSsP4G3CFfAz4QX59b4ai09rzp+Ib7uDMV9YHb7eUPNmgUI6+g2LI7u+Ll9qAuKOWcycGh1kqzZfx/1BHW2DFC6g1RJ2/Hkxne9T2Bpd5+Q4fKm4CDGYJGWq4nxriqHiNCJZC9PifOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893067; c=relaxed/simple;
	bh=xZGtG/teHt9qThRKBMjDansjAY+cXKqWiIi6owISmQQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Rh2M1SAsl6VOzlFBT6vUl8i8YHekRw+KMRAGzj5hd+AwNdfZWLsJpFEyXUV4Vu0uotf4mwJh/irvwE6WpAYL7B+8Qg6QHnZsOyDBi8zPVjIrnsqZwfx84o3y7ft3yV0NmoIs3kDsczzDZIGCKNp1t3dWS2FJtfiXixwYE/9jYdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fjpTqENW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q/Ywy58F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAOxOG3963739
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=A+hv/+FglUu+ul890+d3uB
	Dgm4grHy1rv7R365tuwgY=; b=fjpTqENWTYRG/wLA4VzZXIDFqnrQCScSaE/OQv
	CTFUGdFoIYjfgVhgtc11D6JIPSAxG0/loPZk4/CAH5P7Xxq1aehuiHP6str2IGvc
	4GoWPqg0HU4KPitKQz59fPeOZBXFP9pZeTC23cyZVlj0w2McX5RSzfifZU2Aa1+l
	84ywx1cgZe7gcIszvdfz+ENvgLahESRXC7ftEHEkM56zQjNQ09Z10EmYqYQjDgtA
	f4XieCIOx2g5ET9zYF8gLaZV/q+wC4bSA/ifXGzTDah/HpFITy2ZDmd3eE4zx9P0
	+42IvN09y93rW6EBkKX9x3/PXFl6RC8UlwEQdTEo6nzGie6g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y8ntnee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:24 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-352de7a89e1so2822849a91.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770893063; x=1771497863; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A+hv/+FglUu+ul890+d3uBDgm4grHy1rv7R365tuwgY=;
        b=Q/Ywy58FYrjliGGRO7ifML9JTbn+4G5MjuAhXY4V70xINXwZBMlAgUI1icRTlwhmXj
         fCjMO8jvKETKTmdEcEiG9kD0SF3DGiLyfdTrE2awUltfFWOwrXrTD7/pF45JKStBZm9j
         aapCJVBdSM/PDhb2zrS4quiBcCCuMx3CpQqveSDJkOHwscB6OAPRhEUqDzLETqfV3SGO
         4bOJpJVsYz2NYCybtT5MWFJO+xIl+N/3JddsvqN17ii8+Sb/ZjmLKOvfWN5Nha66M3I5
         DoKIvS0yolG7aZN28tUSh0iU/p48HXDqgDHHb2KTqz6bZ8f6KzQsHMl4z0fy2kZhMy/+
         FGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770893063; x=1771497863;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+hv/+FglUu+ul890+d3uBDgm4grHy1rv7R365tuwgY=;
        b=lHu50jveK2lqSvqMzGjxz6MxfzjKeGR6JYi/721p5en3nHkZe1HsXQfuI3Ers4XIhx
         X+CwMfxA084f9OndqrZlarZ1IZ7d6H9LrPdCizzemAPI2YwTEiksKlhPcDYNRtdsETSe
         NoR98Y/mtQJ7lFe7uX5nv4Jd/iFYUC5orAK281v1d8dW3jOms/kmkLS5irENgnWwdkdO
         Cj9kVBLdjuxMBGqCbM+3pwtHJPvap6W9Kqyguli4ZGKi+0Y3kpY/+qW+kEoIzZTXJUof
         ae0l1kcHq5e6h91UqPpTCKXHfIgj2j1iu3NhLnYwp1s2Oy+g4e9Z/9XVX4mRhAALv+Ew
         x+4A==
X-Forwarded-Encrypted: i=1; AJvYcCUnoMjv6tN/XLl6joXbhbRLPuRBTXhi8ZUB6CEnp+TEp+YBJk90oP22/CdaxnYxEp0XdWctMToyPuBd@vger.kernel.org
X-Gm-Message-State: AOJu0YxZHU3/wvcBXJZrAmictmQq13uH38dpT8sVe6bgcT6Rz0yHKKzc
	/SzF/UFOj1YvsZN7lhWFbxq6z2bRkdpndidPqyA1gx9VTKC4hWja1ajUkmFJBz24mFmlWH01fvv
	i9oLfz/aQRW0nIO4wvpo/xZiI/f71XglhUeu1wHduWSqBDWC4RHXC6tLhc1UyWBXk
X-Gm-Gg: AZuq6aIxEZdeYoxQMtxVE6y4NdfkUMW/6kzkF1y0/3K8DLIYrhE1g7Gg2kHIQsAfuqO
	dN3agTQ1vVXdTEfdXgQylH1VpccuZZn5MSp3EDobhnymAkH460zzh/XfQ9L4sS3GSLGom2D3nRi
	U7CxIoK51kxGnIVHI5gl9LGNjwkcNftEog7xnkX6dukJqye7Pq40Xp7AnyDtJTKaa3ytnaKFxqG
	Z9MvFY7KuXz3FDrniZbU7STFaC+frnAIaCpjQA7EODSIao6hCh3nbURb5RyjOoHAyK73o9p2aWN
	/TK6V2eA1A5FrkyJsf/sXSfJ6lDycC4zxMRMbG5KHwKn2Pz3pjMFOnmAcEGHfA869sgT1pOiOs5
	X0vah8pIETUsMuQNX1JNF+T49DMLND3G2DLGKuTgbpJwUvQZIp0zoH5UcCA==
X-Received: by 2002:a17:90b:2584:b0:340:4abf:391d with SMTP id 98e67ed59e1d1-35693ccf631mr1766629a91.16.1770893063090;
        Thu, 12 Feb 2026 02:44:23 -0800 (PST)
X-Received: by 2002:a17:90b:2584:b0:340:4abf:391d with SMTP id 98e67ed59e1d1-35693ccf631mr1766597a91.16.1770893062343;
        Thu, 12 Feb 2026 02:44:22 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d9537sm4983375a91.4.2026.02.12.02.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 02:44:21 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Subject: [PATCH v3 0/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch nodes
Date: Thu, 12 Feb 2026 16:14:00 +0530
Message-Id: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPCujWkC/43NSw6CMBCA4auQri3pQ16uvIdxUeggk0iLLTQK4
 e4WNm6McTPJP8l8sxAPDsGTU7IQBwE9WhNDHhLSdMrcgKKOTQQTOeOSUzR68qNDdac9zLMyaIA
 ODQItMq3LjLdZzY4k3g8OWnzu9uUau0M/WvfaXwW+bf9RA6eM1rIRFYt+kZdn6336mNS9sX2fx
 kE2PIgPKJj8BYoIlllRgc7rtpL8C7iu6xuMyJgSGgEAAA==
X-Change-ID: 20260131-industrial-mezzanine-pcie-75dd851f5b04
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770893058; l=6561;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=xZGtG/teHt9qThRKBMjDansjAY+cXKqWiIi6owISmQQ=;
 b=n8BaqM54pPMiWDgeH+L4a5kadfzuzWZAvp7r+zoxQlEy7QxKi2mawNFkHsrrkVPQMzsJrb5J3
 q/xZbtkEAIfCnqRw6DVUk5NxGyroBFQPmNCr43hOhg8XLFMCNeS2z47
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4MCBTYWx0ZWRfXyxzdNDO1ok6c
 eoAyrrQ0WoE57xxa/YunawQXtDup9e+WBQ1ZyjGrrA8JJUekFbGmjdDSFv7qzS7c1A7wanT1TaG
 1cFPbEKRiY7//6fG7b3IzqU7yWwZ2flfw2rYaysGS28IaEG+2SEo2FuDw9eoQddZqXAvaCkjq7t
 3EteI+R/WhAblToDAhM9MTeHUXLVVOB0fStIHYFJYxtEO1pPLM/YIqlg6TWFDDkpah6y04bsu2C
 eMa+4My2y2BhkpEXaKKGBOb1maVPmwyMEBBa6CoCU+I8AwV6RDUPMMz2XRsRkkONWRKK1vmyDlo
 vp55mAIIkBAgtsBmw3gstiZA6QA71eJDrUC10/afHElXtCAF6+il3MMlkuG9RfmJRXAN5RZas4F
 0cKkxoFbpakYZUoeqJ/ZjFedmmCzR+3lH2SwajL/yUMWoMd/P80hBaO8SuD9AKZm8YOG7Y4/NVW
 dLEcmwMyfS8rs/z3OOA==
X-Authority-Analysis: v=2.4 cv=VNvQXtPX c=1 sm=1 tr=0 ts=698daf08 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=DPOz585mkp_on3fXeyYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 8KFVTEu74ySIFLFFLHNBfEOGWnULBja4
X-Proofpoint-ORIG-GUID: 8KFVTEu74ySIFLFFLHNBfEOGWnULBja4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265013-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C4DF12CA32
X-Rspamd-Action: no action

Add nodes for the two additional TC9563 PCIe switches present on the
QCOM RB3Gen2 Industrial Mezzanine platform.

One of the TC9563 is connected directly to the PCIe0 root-port while
the second TC9563 switch is connected in cascade fashion to another
already available TC9563 switch on PCIe1 via the former's downstream
port (DSP). The final PCIe hierarchy on the Industrial Mezz platform
would look something like below:

                   ┌────────────────────────────┐                                      
                   │                            │                                      
                   │                            │                                      
                   │                            │                                      
                   │            SoC             │                                      
                   │                            │                                      
                   │    PCIe0           PCIe1   │                                      
                   │    ┌───┐           ┌───┐   │                                      
                   └────└─┬─┘───────────└─┬─┘───┘                                      
                          │               │                                            
                          │               │                                            
                          │               │                                            
         ┌────────────────┘               └────────────────┐                           
         │                                                 │                           
         │                                                 │                           
         │                                                 │                           
┌────────┴─────────┐                            ┌──────────┴───────┐                   
│       USP        │                            │        USP       │                   
│                  │                            │                  │                   
│      TC9563      │                            │      TC9563      │                   
│                  │                            │                  │                   
│                  │                            │                  │                   
│ DSP1  DSP2  DSP3 │                            │ DSP1  DSP2  DSP3 │                   
└──┬──────┬─────┬──┘                            └───┬─────┬─────┬──┘                   
   │      │     │                                   │     │     │                      
   │      │     │                                   │     │     │                      
   │      │     │                                   │     │     │                      
   │      │     │                                   │     EP    ETHERNET               
   │      │     │                                   │                                  
   │      │     │                                   └──────┐                           
   EP     EP    ETHERNET                                   │                           
                                                           │                           
                                                           │                           
                                                 ┌─────────┴────────┐                  
                                                 │        USP       │                  
                                                 │                  │                  
                                                 │      TC9563      │                  
                                                 │                  │                  
                                                 │                  │                  
                                                 │ DSP1  DSP2  DSP3 │                  
                                                 └──┬──────┬─────┬──┘                  
                                                    │      │     │                     
                                                    │      │     │                     
                                                    │      │     │                     
                                                    │      │     │                     
                                                    │      │     │                     
                                                    EP     EP    ETHERNET              
                                                                                       
                                                                                       

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
Changes in v3:
- Fixed DT binding errors.
- Removed labels from unused TC9563 switch ports. (Konrad)
- Sort nodes in alphabetical order. (Dmitry)
- Fixed styling issues (Konrad)
- Link to v2: https://lore.kernel.org/r/20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com

Changes in v2:
- Posted as v2 by error. Please consider as v1.

---
Sushrut Shree Trivedi (2):
      arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
      arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1

 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 250 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   2 +-
 2 files changed, 251 insertions(+), 1 deletion(-)
---
base-commit: 4f938c7d3b25d87b356af4106c2682caf8c835a2
change-id: 20260131-industrial-mezzanine-pcie-75dd851f5b04

Best regards,
-- 
Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>


