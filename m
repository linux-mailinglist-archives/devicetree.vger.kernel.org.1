Return-Path: <devicetree+bounces-246290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB7ACBB62F
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 03:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 526CC30019F9
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 02:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF0E2C21FB;
	Sun, 14 Dec 2025 02:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LIXvOmdP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GnX0fm2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0682E2840
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765680809; cv=none; b=ReNBVMlphvjE4oYFTfegxY6YbNalwpLaObs+yyibLCVYTUpxKIFJNU7TOJfF0hfUZ3sAExJOAuHbvIrN8uixm7CyINYfdesHCXA05UkPAyot+3ywuunGnUECOoDX5nD4f0uIVIYgqshrKSqcgShVHokpC1l9XNx0kPuc2NFQclM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765680809; c=relaxed/simple;
	bh=j6DFWNJZvS53TTymodPmkKeoceZLB24YxWRLfZDtvZU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MN2bILnZGcNGjc/dE4Nf+BjPBxXjsDz11unXGwe7O9I8vwVzbf6K+3d5BAUx1xS9PfPnQzZRUDIArNGufUmUFk8hSY4uD5csrZFYcwK6rFevnXhM1TkWygDxj1sNi3NuukKEONlLvhVGKqwhEaIAZze090t0cqB52kAaDmv/krA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LIXvOmdP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GnX0fm2Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BE2eTCK979494
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:53:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YjDo1i08pHc
	ymyjU0SZNGgKOp3in8sB3lPLBnMOiSJI=; b=LIXvOmdPXyEMeoeQ1uFJm63Tpac
	Yldh4RAW1V3Jy6wRW0uBT5OzdNJGdqUhJO06f7dYUfgmxvpuXBS6nvv7VxOyTisd
	pmWDMQ9Pr+Zd9dAulsaQ/sJngSPmhwHXyA8r36RjXBSB5MAFJ+cxWUlo7Zl/c2pE
	3IBK8NVWV4zaFZYYs2gfv17QyC4NnNH+XcBC5YrQyBJke6dvplSEn6jyws0z1oIm
	Y8uUXeyfDymetRHXu/BKTa+jT1b1iLMpRw+017TOIO43qsou4/ynLGSY+jghxJK6
	HlG46hy5OEn1yzMH2JOlMoIWm9CnBXPC/Vk0dRxdL39y6az0pHmPC/jwQ7g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11cyhc3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:53:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f13989cd3so65838775ad.1
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 18:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765680806; x=1766285606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjDo1i08pHcymyjU0SZNGgKOp3in8sB3lPLBnMOiSJI=;
        b=GnX0fm2YTjkQkSJI09Y/y2mjPSeRRh9evYu/tZQ3hQqHesMXkZ8npJCfhPS8hFcTTC
         /Z6A9HCyaqVy5cWDGuudHAfo0DjJ8u9jIR9bYtjmYdkYaqoCVeLDaghBzecrUK2eQ9nl
         iER1zrU1U4Mbwcsm3Zcq71UHMjldJl9hHDlyzut7jTwv7pbwlLKctNWGp1v24I+SHKoU
         SUo7ahx3Do4Alf+T02LG6KDaXpitY+ZG+S89njZuf9B9WoNYIh3QkO2Bo1q0Wp3PDX0M
         pJPfuAJjB0hyb3ZQjtlVM+KGgupWRjaUzRa0HswTcwAh6Wjjojj97wuSZFkYtVuaCyx9
         zjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765680806; x=1766285606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YjDo1i08pHcymyjU0SZNGgKOp3in8sB3lPLBnMOiSJI=;
        b=gXd2xprHl25T8T7hrZZu0bDTrWkKPWsv+Yg5poGpscpQlxQv3ZWG+NIG83vIkRXo/O
         +f0BhSElxdPM8Kqpdunqwy/We3g+ySAVCe8nl17uDfrde1GnJVSI9tgBpAqM8aJMGJCQ
         K+aiSPKfK4fPr+8tjW4SmhIo+h+o33gPZZvcMz4+5i/zNeCokDPPb2P0AY2CQpl9fvEB
         zOoimueHRuhsVZWnrvzULCAYV1HmRKOWPg2hLnYW79wKt8AiWNMyOTA4oysSx6uHqEXt
         mOmn0sr4iUMEbYyLzN9QcGnjf/m42vEwd5vSfQmd/S/eu5xTkUb7ruCsrQ9ikmtgKme6
         9ogg==
X-Forwarded-Encrypted: i=1; AJvYcCWNY6RrA6Isw0Y5vCfa4YhGjpFYJ4OUOH8RZxTqQ2uHaOGpnTJXGhp6j6ZRLYGhKwq/zoGgl9Gh1uKH@vger.kernel.org
X-Gm-Message-State: AOJu0YxfXBAdd0d3KJl7GT7A6fo6aYfoAZ5MeB94RoJ9LBAmi7umvNTY
	l35gtz1nqS8MjJqy64qYE/GC9sXZtyO+Sh3AArge0sciMgnTZOKxBX+xEttCc55VnDj/aYr6Tvp
	h7QsVqnstPspdJipxM1guTCtbaEzsAX1JQqiIoTW2QZ6Me85cnO+ktKhzblBp7HwFcqJh0+zQuZ
	w=
X-Gm-Gg: AY/fxX4CtJ6JZQyhvetc5ynkEDtoc2H0ZVepucJcQqvsjgj91jeG9QnPJ6WYcd2atRF
	Ediuut+FOluWrpvvZRI/GheZeJ3PZY+afgU6Mty0NlZM4ASZP9EDR1x4wTgOogKGBm6/piEo7Et
	Fp0JXS6OtYXWP4B3X94mQEDtW18mVrX2wN6ReLzlX2/Y8JR+flJwvskunyQx8LFNLDw/YC9ihME
	2BaS+OzeC6PiArZqVFWFg8cvPxDTPA21wMINZTQ1+cHtAUULJMLiXo4E+pBfWaHjthhlD3M5ll4
	lMyU992IDWt9rODg0UbJqM8FnB3SgRCBQpqPYfJ2S7bbw/Ze5OZJV3/IGPQOIXQFpe6Y//I82fa
	vYRu0nnTkLhLi3hykJ3RvRubEcAikPnnwR1DuBi+ZXkA+hl5PG5idldg4ZREpfFiWlkcp
X-Received: by 2002:a17:903:19e4:b0:2a0:c954:3bc6 with SMTP id d9443c01a7336-2a0c9544164mr7334525ad.22.1765680806014;
        Sat, 13 Dec 2025 18:53:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTp8gIz+/C/5M0QlRFTIVjxKox0Y4t7fw29V/vXLhZOKqSN/LHqhxKLXHhbZ33AtzzjgcNrA==
X-Received: by 2002:a17:903:19e4:b0:2a0:c954:3bc6 with SMTP id d9443c01a7336-2a0c9544164mr7334365ad.22.1765680805618;
        Sat, 13 Dec 2025 18:53:25 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea01723bsm94148115ad.62.2025.12.13.18.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 18:53:25 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzk@kernel.org, Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH v2 ath-current 2/2] dt-bindings: net: wireless: ath11k-pci: remove obsolete firmware-name property
Date: Sun, 14 Dec 2025 10:52:30 +0800
Message-Id: <20251214025230.716387-3-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251214025230.716387-1-miaoqing.pan@oss.qualcomm.com>
References: <20251214025230.716387-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE0MDAyNSBTYWx0ZWRfX+fQK3dQ7Tt/d
 bLjsTEF3w+d53J4SgZg1fGXZmVCb3vg2hIOQ0UR173RipFg3+j64ZescZCvDBoNNGYqZHX66mZu
 Yby5HGGxJ84VXBvv1MxYjOivz+hrnNWf7jwMhtY6k/w+rUGedmYJl3MEqa28eLygQ/uwZcgZ5aN
 9nyukNPUK0QxQIstDtx2qp3Qg0oj6C1ES4/LqGVntf9ORdSr+MscGNtldiBqOzGvTgWyU1Kma1u
 hbUmqtDEnDTgk0je7CFqB5wLb6XKZHQgnowpTaDrpBVJhBVACyMy1eFx2eiMbCCUXaKAnwKrwhs
 X/hcDMzOm0Uhepog8BcUXoHTrlBRm5A9KohpEQadFUbF+0loqUG98HwDyhSdvtX1b9hUvxFCCwr
 2VL3nMmej/AJ8D6Z/cxwhIWwFhNpvg==
X-Proofpoint-GUID: Atgd1UMybJyNqhtdH0Huzk8qkkpGh6Cd
X-Authority-Analysis: v=2.4 cv=Afq83nXG c=1 sm=1 tr=0 ts=693e26a7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-5GDireV7CNCQn9VzVAA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: Atgd1UMybJyNqhtdH0Huzk8qkkpGh6Cd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-14_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512140025

The firmware-name property was introduced to allow end-users and
integrators to select usecase specific firmware for the WCN6855.
However, specifying firmware for an M.2 WLAN module in the Device
Tree is not appropriate. Instead, this functionality will be handled
within the ath11k driver.

The driver has removed all support for firmware-name, and no upstream
Device Tree files reference this property. Therefore, this patch
removes the property from the binding and marks it as obsolete.

This is a DT ABI-breaking change, but safe since there are no in-tree
users.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml   | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index e34d42a30192..653b319fee88 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -35,12 +35,6 @@ properties:
       string to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
 
-  firmware-name:
-    maxItems: 1
-    description:
-      If present, a board or platform specific string used to lookup
-      usecase-specific firmware files for the device.
-
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle
 
-- 
2.34.1


