Return-Path: <devicetree+bounces-225805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61249BD110E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B46E5347330
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE701F8722;
	Mon, 13 Oct 2025 01:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gQGuRgAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58FF1922F5
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760318053; cv=none; b=Uw3NcMk+3L6XO+42UF7XTi0rZmmCdJyPomC6uIHTjSKJPbo2z4TSG2kGrzT+Q2fcmRknUQnBsDJoS5EinhcWE4oWmd+5kk8+7bj/xn48dXIX932JvyooSgV/6dOiiNp1d7tDT2icY2apaspFMNVAHfCMBjyxiH8OS1TYrwMkPiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760318053; c=relaxed/simple;
	bh=vYTNGVpJqfVNWqTFnghL5MAMhtBYnTD2XCWEwdgn2To=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YKV0/QhhsYsG7tU/dMg27r/KFcdv6YyDRJNm/VehNdXKuXgkatgEj2PPohKGZWjVpPrSfeSbef4BujkgwMEozeU9e1kzJtdLAKSZvEcJ07I45l/Ke4M0Hu7z4jlQoGEqlRlt8GDeeWRVVMMP+LeRT22ddqWsdCRnIvVMnSi3UtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gQGuRgAr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59CMWj9f009548
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:14:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vK+SJgwnOTEZYAlMkPB/qihU7mC9Y5KP7ce
	r6c8Azng=; b=gQGuRgAr0p8shwpEcS1em5PgCzaRp7SDskDjDsJRc7IgOj83lGS
	xZ1YUXq73s254/R5Anbp2PwBB8lWyQGUzLZXRi1A3kilMkJEIiqcmf2Wfw7/b9TY
	qXSc3pv29gdT6dPlQix0h3b8/uwcWe3EjPHdS5sYk+aKhc+9srfqSvc+bPfCPLBh
	wO0t4Z9b2JwjVVpk6MGbCfzTC47o39aWnZu/lyb8whnYzzNIsdiuJUFUk4cakj/r
	gfzl+1wX1DxDyhEiCK/PUshUBjSqdcXGd7nMw22kRzoLm26ymfK4ZbBwCqIJXa80
	mi7q31M+i9t5zRtuoWJL/MNvj2MdI6uP6ZA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa82ua3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:14:10 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5533921eb2so6203447a12.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760318049; x=1760922849;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vK+SJgwnOTEZYAlMkPB/qihU7mC9Y5KP7cer6c8Azng=;
        b=j5yQJJUEjQqOb4ZXUlkm6gkY1pYLqbZWZaFYRQSaY4/zGMiJJx9vF4jK716ei8wAEm
         g2iVThKqdsN7TIcAEVl3JrwaaqXgA3VKsKt8S9vSeDAlBqerTcSIVU6iCzJoLjMwhYJ6
         JKmJ6Lt+TGgVAkLeWf+Arnrl0woEHcO54TKfGlbnjZZTHyoKVtOYZI447bmhZ8UJpOHV
         vQ4/2JQyS/BV04ch9Wn5747B6ix+kKNT7sK+adKoyvboWiFGJkf4tr2NfJMLyaK8FQBR
         TRmvP0YCzMNyjShMUfVT9uce3K8YdC5K24vh2a0h0+MBiJpHcFJPB1Kymmpqsc2n1dWN
         /4QA==
X-Forwarded-Encrypted: i=1; AJvYcCVs3PFwwpfWuzJQCz4xfWIK6yj3zZsSTDhwAxTYyShLjctAbP9/CM0E/obizR4r+ZxXOjWY2YF15kXt@vger.kernel.org
X-Gm-Message-State: AOJu0YzG3MJWVhpHwYCPP+TacmYLzYVh0EvCp4AcE6GQZY2BwXIfvJIK
	sfd0I5bWBAFNITThSl+FWCqbOtJoB4TJXGiWeKXUNcywyS/rQEM8j6M+DgllEmuSZwS89fvmH0P
	QhBLU0xgXPFwgp3xvaIGd5Iva+LPGUY3zL7A87HiBGkO1tp/ndCEeii3kyHzbRwYvm0+ut8oa
X-Gm-Gg: ASbGncs7pvHmhWXVyaIlESqYC6uI6EXLSKfUeXNVIzAQ8NCc5RJNKStYbGBqvvNlOif
	q2QF69RhiQ72taaNI5GwlLq4OFl1A4huqoiwFRDBUl3cDxwWlqLG3QFCgAI085HWiLeVlxAHZw1
	tY6BOhjyV6x1xa8pWqWMmAufUu9D6CYHJ9SGulIbYJFwrYrjaf/+YcvLFxQ6m1alJrXWOfivJbL
	AvKqxcxz5U/yv7UQ4KhTKnlei6UFkvd286p1x767DXlP1+c7Utzppu20ZhbgrbnNS5PZ8TqnXLz
	K7do/Vj2ookj2rSmNq6div1S1rmkJQsyWrFYbaQrfnp8m+A9pzBk9S/bjnRhYVGqJqtD4XKw/BB
	MQg==
X-Received: by 2002:a05:6a21:4843:b0:32d:b925:246e with SMTP id adf61e73a8af0-32db9254d9cmr17513632637.43.1760318048827;
        Sun, 12 Oct 2025 18:14:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2QXwY3MOrK4ad1ja2OEJVP5yyAqc35NeoeynehrZkJOMLTtorm2RzOTEzGNzwKQ3z/GLTDQ==
X-Received: by 2002:a05:6a21:4843:b0:32d:b925:246e with SMTP id adf61e73a8af0-32db9254d9cmr17513603637.43.1760318048362;
        Sun, 12 Oct 2025 18:14:08 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb11ca0sm9672647b3a.32.2025.10.12.18.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:14:07 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: usb: qcom,snps-dwc3: Fix bindings for X1E80100
Date: Mon, 13 Oct 2025 06:43:57 +0530
Message-Id: <20251013011357.732151-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: cByArELuO2fJwTc6cnj-xg3BT2ERQtFW
X-Proofpoint-ORIG-GUID: cByArELuO2fJwTc6cnj-xg3BT2ERQtFW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX3/UGuNoXayM3
 MGeSJnQFLL9iWooackO0YSsEGV16IUrn64VaBzgmeWk2K62wXRwSJtYeXIi6VyvFTnzho3rNEIW
 9z1qx8VIiEVIMKlaIMM0qZ369Rrr58v6CgeYHVRa8sFpB+Y3i6f0B6dMGp3cLGnw6eRcu1u1elc
 ZzwRenGTLuydasARswEbc0jhYZIzQx/rbubJttW2MfzIS1WW84K/Ge4egkfjHqCIZn7SWewcNgz
 d0tAHrm2GMfOoy1ZpZldNX54TG+02lDQgKShZRo4uE1efKt8iDncFI1QMWw8kikjs8xZtkUc5tA
 AFaUe/1+K/Ml1ei/ceTF8boZ6SGWdAxbTSFW+GTJny2/f5b3X8XJKGBtR/ymtk2jcEvf2+LtZ/q
 grkW6ksq37uaAyM5wHe4VyxoETTXKA==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ec5262 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=QltsTdpWXtN-n1SMwaMA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

Add the missing multiport controller binding to target list.

Fix minItems for interrupt-names to avoid the following error on High
Speed controller:

usb@a200000: interrupt-names: ['dwc_usb3', 'pwr_event',
'dp_hs_phy_irq', 'dm_hs_phy_irq'] is too short

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
The above issues were found when effort was being put in to
flatten usb controller nodes on X1E80100.

 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..d49a58d5478f 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -68,6 +68,7 @@ properties:
           - qcom,sm8550-dwc3
           - qcom,sm8650-dwc3
           - qcom,x1e80100-dwc3
+          - qcom,x1e80100-dwc3-mp
       - const: qcom,snps-dwc3
 
   reg:
@@ -460,8 +461,10 @@ allOf:
     then:
       properties:
         interrupts:
+          minItems: 4
           maxItems: 5
         interrupt-names:
+          minItems: 4
           items:
             - const: dwc_usb3
             - const: pwr_event
-- 
2.34.1


