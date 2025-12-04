Return-Path: <devicetree+bounces-244234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F07ADCA29A4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:11:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 227AC30214E5
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D87E323B60A;
	Thu,  4 Dec 2025 07:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fKFLdc71";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SgmeO45l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F65398F94
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832282; cv=none; b=aoG3/sH79oSVWFXXRL/UbK7ZiB7XjxWV+sjSX+F4/qsn0sdi1y4ZyUZetRrNtjcR6V/OvyM4JqF70zkFvTaVeqg1nsb5ZkceSjpmJei98JyM/ldBSHYwc2EjBSs9OOkj0MxcearIQu8AP3WLBwv0sLocc/DaDLgve7W6gYiXkDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832282; c=relaxed/simple;
	bh=y0UAhi2vrUBNMI7eiX5+ttOvJJeuhtYyklkwIMbvGKE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GQOJYBUsHoMouaKC4xgfHKgPFX8y+28bxT77X6VS+dhI8ztZ55L01I2jn9Xi3MCBkQxJT1r7O+Lex7RpfNcIvAs7S2lKDOrsWWz//8bsW+81KErhU7trkXFlyvla64iT1O+74KOk0phJ2qq8KIWL0lghY8nqS9QQX8IYrqrJtoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fKFLdc71; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SgmeO45l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468pDX560269
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:11:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X5dN5yZ9ItC
	8K4kgYMQf5DsqZ5QTAm8KkS0z5PvBi2w=; b=fKFLdc71YwSnEPot8G73icRdbIC
	upzhNi0Ezvuc6NmDSoQLFY7kpPswZ9vyJ3oIwAC66yC40336Vle/xRWwKn5buHt7
	SrErJZUDsdIYxbcOWrfCqkbV0q2XkZ89KJHH/Bg6PQIoA76BbNSWbO9RjvRl7qqf
	8WKSS6S4PE/Fy0YT7ZjVMmo76K2ZUy1R/rgJUuj8o7Mu/P8F/wI3xilCM4ZVB4kJ
	jJJiP/EwFg29wqlacYMjlDwXmmZaCqvd4SFmhNo8BkRaywD9gsLz4OhuXsAK0XB8
	vaOwUESaJwIskln8Koqfehy7DgUA6HTfZp/0OphRxxavvbVFlaCmiMI9dhQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4attmh9v8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:11:20 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b8973c4608so1662277b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764832279; x=1765437079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X5dN5yZ9ItC8K4kgYMQf5DsqZ5QTAm8KkS0z5PvBi2w=;
        b=SgmeO45l4m1nV6TSuF+Pez7Zhb4CHekBJVRMT8wpMROjO+2e1S63FTqngkuw0v+jD1
         Aa9/eUkWvtgfcNGEBrtGsmPhQ6KCRBeTyGZDBNFZWVRWdGAT3YZfhhW0LN8iV2EpyRo9
         oAheQoH5yUOcyFmgdWjuS0mb5SFRtZCcC9kFbSv2iatSEoV2XcfVRfIF8Y6Lf/tRFK0V
         uFQqukQ2iFaXahxwdZ+OWLZrS4R41pKVLCa+yOXGZ8k36qTl7V9OjnNnLJwCvm5Pcj9t
         wZ+zvfpnE5yPuip0eqtz/AM9i9UWlSjYp+UECHZ5YhW/k7TJsfz2V8PdMpgYU/63lTF6
         rJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764832279; x=1765437079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X5dN5yZ9ItC8K4kgYMQf5DsqZ5QTAm8KkS0z5PvBi2w=;
        b=xKGERrkK96uHIiAdPCUEe9iz6cv9xoIxGpv9B9DbJj+v94VdaIz8iKLOpaYzJZcKm/
         0nN+/Zixt0Dzq4kckQHnJQzbGqmuMsBAql19p5GvNZhzD/HtWEg0Dy53HqLBz4VP9yLD
         BHy53ozdWgV4UvjZK0GHXmZhSy/7JFad2CT9gTUB4zDRGo9Rwoa4O7FQpGxlB7QkZHbV
         BHx8DaIwkC2rzrFCwyC8zwcF0RM8ZYoJNcyiz2yF+dWSQD1Vfum5f+X1SY/vhXpj0goW
         kO7umvwo61cv8qLJBqmRQ5aHk5d10/S9Kp4Jt2UwbTXWY7l2iISZ4c6zSXwldRWwnBVY
         CKnw==
X-Forwarded-Encrypted: i=1; AJvYcCW266FGh2CgWDZuduhc7qBXGUrMh22Ov66gFFrk1oD5Z/bFYZVEAjxyLDB39H91iVQP776z1pDDzHE/@vger.kernel.org
X-Gm-Message-State: AOJu0YwGAmu+beMvEG7Z8lhL4Nvzq8+/n8wJ4BOkbJalP1JXvVdwJ7L9
	REaArD95teMcxE1iKAxHwCp5y1TL4cUhQmFQ+88iMPuO4xjXDBf81ODTAcd7rZimM9jrNrOOrkY
	wvDNIuzhFY8/dXbObNTZwlb3af91YSjqsu4n0mhUCc76jEdF/3+KafQCcQFIwV2dm
X-Gm-Gg: ASbGncu7tOOnnVcW6IDh5Xy1Bm+oTW4167Zzz6XuyyeXRLCPdeiVLZHBzva9B2Ktckq
	DEyoQNVKXLLDkozrkSQ9hL2h//jOBcsuFbOgQxyt7k/kdbOvqMqX8jBNlXXeIAvGBSdUz9VdENq
	Ncmhytn/NTNsrW+rPnkdOXPjnl5838sSENgNf/GUHnipAtpW7WqHJyAi5GywW9gbNJW6pBG0gII
	jQVF/oRsbVBN0uSzhH9Y5iDnIE4astMuK+esGg0gM+uu1ZYWMQqpRzL99iwkP3p90zA4D23VCON
	HRuuepa0LLZ9sCbAwQTYgrXi6qptOnARSlDkEP6OUXLKG3e141xU/9Q+eEIOgsl1OLuKQj4lp9z
	QchG40KAolbW+Rsc1iGMje1SE0HMI4WRKvzdIH7J4+v6H9l3E29QnVs8xi/QH2niUTMQN
X-Received: by 2002:a05:6a21:9983:b0:34d:d030:6739 with SMTP id adf61e73a8af0-3640384fb33mr2392102637.31.1764832279070;
        Wed, 03 Dec 2025 23:11:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRimZYOSogE6sc3Z8nzoRkgTMJ+lV0kNJ7Xyql9Svm92IYE3Ca3TS6TItapIHe2OVC9kCfmA==
X-Received: by 2002:a05:6a21:9983:b0:34d:d030:6739 with SMTP id adf61e73a8af0-3640384fb33mr2392072637.31.1764832278645;
        Wed, 03 Dec 2025 23:11:18 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29f2ed331sm1117470b3a.4.2025.12.03.23.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 23:11:18 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-current 2/2] dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name' property
Date: Thu,  4 Dec 2025 15:11:00 +0800
Message-Id: <20251204071100.970518-3-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
References: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GrUSgnUNUetgG6S1VvXjqohhMBCeCKdZ
X-Authority-Analysis: v=2.4 cv=NcTrFmD4 c=1 sm=1 tr=0 ts=69313418 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-5GDireV7CNCQn9VzVAA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1NyBTYWx0ZWRfXx42u4OR9hcz0
 MsZvA2zlhPir6uaDXNRF6sVcoZZjafXGEGy8R2BnHV3i9SVMiL++6DZLHKsWGFrYM/Jf6qGO4+3
 Ol1CGKLmzRsq/qNWhpAws5HEgtmDDfC0/DC4EIqF2lGSssDWSV/r7EzAIPS8bBT/8BUcM6PmTdy
 c/spiZDhtd2JFC/TcuuSY2OOzuGqnwThrkSA6FW3C1P2yg7jrq+JaKcgtnEe2dIhUeSUb00Z0e0
 cqhhcGOuryvGUmtOlKSPRSOQEVLByPpqmh3xvC1AdI+BBYQ4NHyAD1STJvZEDHwuJwpWMn4oCv4
 zNu00ieJNgRshnJoKBbwZ7G/sDCxOEYMW4tPENaJ/fCaEocBvTMc4a2l9+dFFG9XnB4HxqPBLI/
 wdXr7KTh5neJadofaoEhaKcwqwZPIA==
X-Proofpoint-ORIG-GUID: GrUSgnUNUetgG6S1VvXjqohhMBCeCKdZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040057

The firmware-name property was introduced to allow end-users and
integrators to select usecase specific firmware for the WCN6855.
However, specifying firmware for an M.2 WLAN module in the Device
Tree is not appropriate. Instead, this functionality will be handled
within the ath11k driver.

Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index e34d42a30192..0162e365798b 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -37,6 +37,7 @@ properties:
 
   firmware-name:
     maxItems: 1
+    deprecated: true
     description:
       If present, a board or platform specific string used to lookup
       usecase-specific firmware files for the device.
-- 
2.34.1


