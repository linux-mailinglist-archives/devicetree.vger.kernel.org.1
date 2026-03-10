Return-Path: <devicetree+bounces-273538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNTCI+khsGkkgQIAu9opvQ
	(envelope-from <devicetree+bounces-273538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:51:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B10B250E87
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B00530DEEA0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BFE63C4576;
	Tue, 10 Mar 2026 13:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AO4/PwQN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fBq0LwOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257423C5521
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148148; cv=none; b=BTci9URV9Pw2lDKlzqm9/XZEd4X21YGh0h4gLvDKkGe9eYuADsclFrT98J9rHne8bflvXWXPGJeSqDMARSziw6bopGTQIcI/kmtTNmGqTOnF3RmXI9rmUsyzU0ksvK1PHzQu9YyeiOMq4t1u9q+7fU+yZkY/K5WhMfxR5weK1qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148148; c=relaxed/simple;
	bh=1zc3/SjNnHRL1TxmXWoaXASxPBtFnrzJpduOYNDZI0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=grrwqWD/PfnW92pS8IqClAB1oHkw9dbjpYHDrGVCV7eJqad4iX0W6NsxFq3He35bADh6XOAAaMj2wlSymP6L/bcyj/MdnBOXd0w63VwwnkkzOD4I5Xu7I6uzl1CZN+KeeR2zYMy1f7lCOWdreuifacS1DPj5SnxblMim7DG60T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AO4/PwQN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fBq0LwOd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaUs4303868
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AMvYZkKf+1EHkn+bX2rKPCg7+1honZq3JF2wJjFaANU=; b=AO4/PwQNq3Xnn1/s
	nkUQxdUfhSATWNOLn1pw7r0Pc6VlYmS6JHd7w6np2+gLt/8W+SOH17fs3wH9GWsK
	OkH6/yN/dORr9qx7FESynRvhm3w57XcNmFVml3znCxZKs2N/zPWBAzcQ6JOP2ukt
	dDBqjIsOWoO3w0Xa+khLjZyyZd+VrCzxbu7ZSSOPstyUTLLI0jnyVZSrvzxflvsb
	5o+taMKAqe10sButSnoCkdL+fusJOK4aRWlAZVIFNZR/BqB4CRPdOQN405Vx+PaV
	17DOacjp9R/bl6GINN9HLTsEYACmVgLE8yKu5nEFa8TITNqab+KWHTw8/r1c+xxx
	M78RtQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf0k9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:09:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd81c571a5so1259737485a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773148145; x=1773752945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AMvYZkKf+1EHkn+bX2rKPCg7+1honZq3JF2wJjFaANU=;
        b=fBq0LwOd1nyeCkH/yVNFK9hMzcYH8o6z3Iq7Bkj+cf6YqgLmftk/dNF/DYYi6cydwm
         m0r9a+jYlIfSpoiNIfWNMBauqZintVNCUDmQmFccoRt9Vsw1EVFyRjouiYvDiYEI3T8m
         nKoyqoaQ7Rdavbtdd10h+znDRi9xADFhDu/Tijpyy/eONniLBF08ZcnX9Xyunuyhfaqj
         Wo9wRTi0oflcBW18UIyN1RhhK8B65+zZWmDVNeZ+MYO6tnXeZLPVMdc/V+GzK2QIHNQ4
         jWHhxleOJ0PSVtGIBXDprlk58yDrEFSpqmStNfpFvBlwAKS8kGUuo6AEBdj/xjqU/cM1
         4fNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148145; x=1773752945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AMvYZkKf+1EHkn+bX2rKPCg7+1honZq3JF2wJjFaANU=;
        b=ZthZqogDwmWLf9Z02C1AUcVzaU8f6UyTJHFeGrolmlg2fUq/0e/b3bUfysQhp3Q7FJ
         BPzhlgpMOa350xdWyDBcMUwD4GPPeNZoMASqNLl5c40kWPRos4fFL+K0Y6ixeVPYPRDt
         iYslTLew5UKyFxv3EZ6fVs0hhEE8WbmYmqwMqE+Zk3viPylqB6/xRSJ5y/nTNx+E2YVQ
         Tea7nLkJgKRp0j365HfsKLYg8zdLqpnFKX+EA5LyZIr5Pa16NDv19bPntaaCoB1QQdOQ
         /Fz3V7GV8mmyiBAbVyI+/Gi5v/fv38qz+H3Z4S6OcCILBPn9Fiax6NVvO5sr1Y38C9xo
         WFwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfzoaaFmlJ5kuco0v4c4lif5LMAwz10dwrA4gqjRsJgEZu7ZYOwkw18U55SrOenIHMY4cS+Njm8bCY@vger.kernel.org
X-Gm-Message-State: AOJu0YySRzIBHUMJ8OvtfiB/hCX1VRhoV+5zW650cCWBSKjaY+sXA9CI
	IFnD2ZxJRoPqUKoXYiulQr48R+zCABvQZNExyEbY1Seuu5SgcXEf8L3vU4Z2feCov4zBv4s5otW
	LtaXlnpMx0ksQ3pMjoTkt1w6ZiIsY7HNO2UPrw2fVTH+Wv8r7svPIDSvQfPkmxpT+
X-Gm-Gg: ATEYQzwDHuu0hxIvWoHInrjLM3SiANw95OnLN5z5u7hhjo1x3cC+biSPnEUmypp2O+c
	HgVxTjPKM9CCenaxTIovyqsa/KRAs+Ep9qR6WCcybMRr5s/DfPR15mhaMTK0HfL7w1S0zzTP1el
	qPSxs8O284IQGFIcx+f4vM7s2kvHPlqdq1igc4MMQknokqzyKgT6p9zZiy4KZ9TFOp6tbb94hC1
	dOGf36WXgcJyw4eEZo2K+HG6aQjltwKT+hsmnrloJ8pBMRoVT9M6xD+7e5W6tBFys7BeUOAQyjf
	9tIEIZnC09w2Dwuh8FfHZvXaPB0tnd3jwFSjWmegY9o2wDRsQCx5GmSexI/uWSsLZs8dIoFumrQ
	mwF++lBw1DJRPIta2qqY0wLG33YMPczbbFctjSpmBG1Nb
X-Received: by 2002:a05:620a:170c:b0:8cd:92c2:5125 with SMTP id af79cd13be357-8cd92c253damr521805285a.13.1773148144932;
        Tue, 10 Mar 2026 06:09:04 -0700 (PDT)
X-Received: by 2002:a05:620a:170c:b0:8cd:92c2:5125 with SMTP id af79cd13be357-8cd92c253damr521798385a.13.1773148144342;
        Tue, 10 Mar 2026 06:09:04 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm99472385e9.9.2026.03.10.06.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:09:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:08:48 +0100
Subject: [PATCH RESEND 5/5] arm64: dts: qcom: qrb5165-rb5: Drop redundant
 non-controllable supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-supplies-v1-5-5071a7052ea9@oss.qualcomm.com>
References: <20260310-qcom-dts-supplies-v1-0-5071a7052ea9@oss.qualcomm.com>
In-Reply-To: <20260310-qcom-dts-supplies-v1-0-5071a7052ea9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2881;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1zc3/SjNnHRL1TxmXWoaXASxPBtFnrzJpduOYNDZI0k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBfiDfaqMK4KNa5nQFVmn1arl2119epUsHO5D
 ldQwcXA/1+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAX4gAKCRDBN2bmhouD
 1zJ3D/9Pu0yNRbo0zG/JWHRFDxgxRAz6DtYojyMDSN/5qaTHTiTwJ0FnydVwkAAwFNRpDbf/xtC
 fY5JdLt35+/++JCL/wFMu/fm/Ru69o+IkbFcgd+J/9pLV/BupkMHbblABgY+gJ6FRyxyDjf1oQO
 Hq/OrQV1Si3MmoEAZ/WFEfm0v0fpk3II+n84fLmp6Yf9usfKzydBIw1txnLK9XdXURIfaxICwva
 Q306TbTNW60TozAR8bfLntjt6XxXzFKxF3+DhD/82AG5eG8MeUIED7ROb7cB9Nz0I/Ps1qZmiRl
 llFnrSY1llsJdezfqiu2mSUmPT4+1OMwL+ldFqo86kEPFXMUNfrw/7Jk2a3C56Xa5EIXZP+e3qm
 iZM7MOu6jeSN8YjfwBnoPnfvxEXmfDRy7aKAHAIwXZ8HcWJcBKBCzxH/bKkejnPUElzUG8kn8NN
 89rqN+rcjecNwU4bAivsfYkk5KfpV8mGMQMpdC/qiznqKGfX/o3vNkhUrCAhA7toS8jCuHhEzvY
 i+ddjt9PLDGWm8KCJp2snXTo87HlMCycJ2R1rq+ZqsJ8A6tokIKkoyRK2yX9TuiH7Lbt+mUzvJh
 aAo3TLqx+/39ySuODAB0OucJtsomg+IoyTnzSW6yPtaeq8AIcSng1v2vGoXd7TznPSGktwQmb3+
 QAR4bnpBmXr0vFQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: DuWlGXuovQyXXnLpqWVmdTbH6x9-JUQR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX6aBzHwViD8Dp
 W/FPI3BgjiU/gbcQfTZLu9UHl3Ul7wfFu3oaz8D49/tXjOD6WMv7opzV5dbejvHQELKekNpQbI2
 Y48MuKeBdM4+/9X/ewVbI4UMn1gLkDJ47iScacFEMr2QvRt835OTm4T7lRY8dPKK7DqQLHeph7n
 UYdAb7ZoOxGAkRTl0+RdFbljs6VldXXj585MAG5OZ5VgJqfGIfQmE0kq5Le0tmiWWqrC2/TtMvO
 mbcW2lzOjg9wlq5qMw1l0xKNVTFYQLcks/mavpKIOUzoFT89yM3UJDyzoPsTiWnB4ekRQVhrVxf
 Q6Vmw4qn+wncZTH2SqmHu8k6p+LKk/mbFr3trEo2yYRzFSLheZw/ZUS65aC7zuvfUvDLFAIhvhH
 w9hQgFug1RD/8WYLsip0Bvz9diwHJrhHdhs0RInQZIBCinSwR3CfXuZPkb4HLcJ5cuxdDaXYojJ
 xik/8WvgMw72h9GYWmg==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69b017f2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=_9iiUgdG0rMA4LjK8P8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: DuWlGXuovQyXXnLpqWVmdTbH6x9-JUQR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: 4B10B250E87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273538-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Drop completely redundant non-controllable chain of "regulator-fixed"
supplies, which serve no purpose except growing DTS and kernel boot
time.  They represent no added value and because of being completely
transparent for any users of DTS (except the bloat), they should not be
represented in DTS, just like we do not represent every transistor
there.

For the few regulators being actively used and supplied by removed
dummies, change the supply to match the actual final source without
these dummy intermediaries.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 39 ++------------------------------
 1 file changed, 2 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 71b42e76f03d..54da0d759a67 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -38,14 +38,6 @@ clk40m: can-clock {
 		clock-frequency = <40000000>;
 	};
 
-	dc12v: dc12v-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "DC12V";
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		regulator-always-on;
-	};
-
 	hdmi-out {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -92,7 +84,7 @@ lt9611_1v2: lt9611-vdd12-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_1V2";
 
-		vin-supply = <&vdc_3v3>;
+		vin-supply = <&vreg_l11c_3p3>;
 		regulator-min-microvolt = <1200000>;
 		regulator-max-microvolt = <1200000>;
 	};
@@ -101,7 +93,7 @@ lt9611_3v3: lt9611-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_3V3";
 
-		vin-supply = <&vdc_3v3>;
+		vin-supply = <&vreg_l11c_3p3>;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-boot-on;
@@ -231,33 +223,6 @@ active-config0 {
 		};
 	};
 
-	vbat: vbat-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VBAT";
-		vin-supply = <&vreg_l11c_3p3>;
-		regulator-min-microvolt = <4200000>;
-		regulator-max-microvolt = <4200000>;
-		regulator-always-on;
-	};
-
-	vbat_som: vbat-som-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VBAT_SOM";
-		vin-supply = <&dc12v>;
-		regulator-min-microvolt = <4200000>;
-		regulator-max-microvolt = <4200000>;
-		regulator-always-on;
-	};
-
-	vdc_3v3: vdc-3v3-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VDC_3V3";
-		vin-supply = <&vreg_l11c_3p3>;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
 	vdc_5v: vdc-5v-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VDC_5V";

-- 
2.51.0


