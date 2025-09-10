Return-Path: <devicetree+bounces-215660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC8EB52465
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 01:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D89507B7931
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 23:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C562E30F932;
	Wed, 10 Sep 2025 23:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VAhhB64w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8542E7BB2
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757545559; cv=none; b=NNQdecjG3Vihs9OSuEMpOAYsuEE7YOXx4vTN3etlLOq87zxtLx1iaL6PMN3RKKaWl8gN2aeEhQK855WILAujqRNJWZfAyedeL4EuvbUW0gjGOLsm39gkCLmkp4zTilAB83k9pzAKzTGjMkM3OBk8D+QMklNx/v6yft95QBu646U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757545559; c=relaxed/simple;
	bh=WRNh/zltEg5V4mPf9GD3rM9HqZDe8KQbEsnD76LvjW4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tKqutbIheNkShrr5UzvUAsVym06OpbLdWVdAGBVg4VfEl2wtdB+R7UazHQKaZr8tQQy55upfLLMkvT+8ZlteUVfP1334RnfLqOCiyBTaVUqRocUdZk9nfPgMhea+KmGaBWlQQhoNxFrE1Sb39EUl4YHKr6q6HbRJAMjuaFawsvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VAhhB64w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AJ6HVn024499
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:05:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ERzL4zTaKScfm7J3BN7ajQ+Gb4oQI6oE8fQAwSa1L2U=; b=VAhhB64w/yE0LjlB
	c8lx2AXOd/51zMQVQn4ERF7h3TAU2HdOtwEbQzYiHK9FSNceTdBsjAitceLboIbC
	mB8/LRwLn/TXN73aaOd2j9FveDXTN6iWN+3mokB2OeCeCOPZVYgSKCkmBYzWyHGF
	3zvDC6FL+Y1ObPGwagLyDlf2ybaQrCP1PkJW8C6I1+wLX1M4/UNya0VzbVze7LUG
	Pr2oSwPV0EX+jpPdj22DeMRGlS8dK1e1onxFjeuo71AZedcmzaYgHxk/4bKqw9KD
	IhSG5dHprShcbxyICFvWhZBszEA62E3AUlENeZ2VscEpkiJI7C/SJql+T6MAE7x7
	wiHY0g==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h0hkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 23:05:57 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-74a30209044so197758a34.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:05:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757545556; x=1758150356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ERzL4zTaKScfm7J3BN7ajQ+Gb4oQI6oE8fQAwSa1L2U=;
        b=P+zhGyndjwTpKqn3oLezS2y2kTYJJVUfbKtQjDucLPrOkJ4RebNVt3TGn5bM7hzW02
         OZYe+5ryAHhEpqHKwq6reM2k0NbG78BavURg6MmYXp0D8lpyk8YePZzR3JhUOXthI3XI
         dV9WbIDMpWfduyAw0Y0DXfL6YJpJkHIInGQ/utqrM0l35wm7RgWum2GQLt3c9lhTbf0h
         y5V0b6tJ9rj3WZGW+L/K7cutacr2ig0sq/GgbmkGk+00QlzjzuSUgdBwwdtvl4KaBZTo
         PGEampDlwVNcGyosa6Yt/MTVyJAgeQ7obZSRJ5FdcYTrJCSCe5EUmTe2S1m0oCIURXq5
         64/A==
X-Forwarded-Encrypted: i=1; AJvYcCUUASTZn1mcdx501tvEU5YDbG7cdtji3hI+WWvBOEKv7oPmT6Q4awZ8Tg9WjtgqjDxuo+4nTim37/Qf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkc5T1Xe+yEaI+XR36smYr5zSBmTh6A6P4WWKh1H1pFFuR8BWC
	Dp/M7OYTjgzL1OeTWEKDDXuLVmQeBnxOZsnXf0ZIDBLAWQi2uk/Zsxs6GxfNjynYvNXAegA7gyG
	OEVq7mOgvuZuEcQSejiQYFGxQNKevHa7DW9XApYcZGpP1MWafHJw5m9qu0ojscZAP
X-Gm-Gg: ASbGncuKb02rvk0hW3VK7OHVIAZsL9oyxSAvF2LDLxAk/q/U4Rw+XYHbdpovs6u3Up4
	qSJUYro9EXrLD4Xpyw/uoLE25ln2KlUzsp2DD5uhYC23/obT4cPBCX9WXT2pd3akG/B5qA+cDUn
	QrcTlkhGVQafHt0E0jCv7b7AF/3mu7DwUmM6CdM/E56WgbENYz96FkfAnOET0bnUCJG/ftt31NA
	2hRwR8SHxHywjV94p0tDVNWYucuBvAeGYBtsjXv+FCYhBVhKTNr52HXjFRRo3iz+x0jNohBV/we
	4PJixUdpjTxPO26TflEhoxOyU/No7gU2++cOGv/Bni1WUKh0BpDqo4h1OtV+vH/OENY0Ed52ZW7
	6rfoXMXpgoVFrrdOEZZxEfodiaObd5xm6hNl4YZg=
X-Received: by 2002:a05:6808:528f:b0:438:37eb:62c7 with SMTP id 5614622812f47-43b29a5a369mr8192337b6e.21.1757545556482;
        Wed, 10 Sep 2025 16:05:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEFrRDMnoPnBq3tCf1VgqB+Opf3jTMRrFInDKVqPyjvxQxp9MCgQH85CsiR3yQpJ/JdTq4zw==
X-Received: by 2002:a05:6808:528f:b0:438:37eb:62c7 with SMTP id 5614622812f47-43b29a5a369mr8192328b6e.21.1757545556124;
        Wed, 10 Sep 2025 16:05:56 -0700 (PDT)
Received: from [192.168.86.59] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b7f1f7d63sm23944b6e.29.2025.09.10.16.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 16:05:55 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 18:05:38 -0500
Subject: [PATCH 2/3] dt-bindings: arm: qcom: Add Particle Tachyon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-tachyon-v1-2-5090bfd133e0@oss.qualcomm.com>
References: <20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com>
In-Reply-To: <20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=925;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=WRNh/zltEg5V4mPf9GD3rM9HqZDe8KQbEsnD76LvjW4=;
 b=owEBgwJ8/ZANAwAKAQsfOT8Nma3FAcsmYgBowgRQRpuwnqgO5E6Sg8JpRzXk6vIb9uXCNsuLO
 yxI81T5sAuJAkkEAAEKADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaMIEUBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcW8bw//dlxT0hmietoNNCEsBoKLfpveV2VoMc/uSwSVxUZ
 qGKv+5XSGNeqQU95Ofs5EqPsmdeb20MG6OoVte2VOqmYsUiDBnsE9B+iiE9kpm1LtQqguEeSD72
 E6Tq6Yz4CNBP/BGZX7S4mcbdgo2Krb+2pxi5QOplbH96WvfbIhBVK1cmWf/wJSEOAnHrrD5dK4M
 CjboQhXTKItr9XoiudXPqmaLqUtNHqAsBEz4onY7qKY3rGFYhQx/3Hpr+7q3CRD2Z7/F7wVIaZl
 s6YkN9qW0n2IOptlpybufqqgjGWDK7EcRrjIbQ0o5WGKpY+KM5+vx/8ndbPCsarFcwBsVdE3rR5
 MHI+RbGIsZpjsIBGuVUJXw90Devk2s4XoYut8C7igAw6FLyq1FN2CoiLgkb9tUqrdBaH7WiuhDJ
 YRyPEkyM3rz14orqsxZX20QHhThKfzgxyeCnZUr7cBsPGb2lSHoUu1tCxVUbxOyljsOQi2rwtYk
 RNJNS2LSpf9FMkSI6Hyeoq77G4I1atFXb4pDCs1lpEJ/VOTwG0WQd9waeSKAlHvrjyy0hdD6EyS
 aEx5YuDt8phQncV/ZnyEvnYPj5hOgaS87Ir6b5Wo3cCcDMD+vD1nHLUjhf8NUVUs6vbH5O/seVV
 13b6lgFt2A4w73u4dpxzYghKZu9ZuEj/FShb3j/a4JqM=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: GZVbnJccJjm-bldGe_77VagMFMZMUbrU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfXzQ4wgb0HynXr
 rQMVC9Setscnz61jMTnJaehcji2Fp2WnP4B23W5kiqMuiyVr9lVbX5yc/mXojZ79TAjcGXi0fU3
 KInzsrrbDScvOUoEhiGBWg+U9ur9QO8uiYguC4ucujZM1B0z1J7t99U5v8om0GgUHcU59MvJStb
 bfXVlr4iu80TWjUF85OKmhF89lmzfktkW5LerbNXzEbeyQiRC5V1WIT8unsLWQ5oN5NQ/NWBRTe
 +/CAlRtTY3fObOWJCAoKa3qxoIRFpt/BPwasx6jWz/BiyI1wkrVjuJyM1YXDOev+zlPMp/Depgm
 /PucpkplESu3q8WUeo3vuUPWxcbE524nBNLt6DElWfKJEQKf+7QCuYXEKlpC0ikMwC8pWX50KDo
 fiQ8vllP
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c20455 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Dkwbal4DzCgJGMwAlbYA:9
 a=QEXdDO2ut3YA:10 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-GUID: GZVbnJccJjm-bldGe_77VagMFMZMUbrU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177

The Particle Tachyon is a single board computer with 5G connectivity
with AI accelerator, based on the Qualcomm QCM6490 platform.

Document the top-level compatible for this board.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f3686f1647b9e2ea192c175b0b96d48a..8e0b42ad65607abe687a0bcc5310df264e14157b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -337,6 +337,7 @@ properties:
       - items:
           - enum:
               - fairphone,fp5
+              - particle,tachyon
               - qcom,qcm6490-idp
               - qcom,qcs6490-rb3gen2
               - shift,otter

-- 
2.51.0


