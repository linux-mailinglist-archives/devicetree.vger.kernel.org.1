Return-Path: <devicetree+bounces-276913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK0UEgMlumk3SAIAu9opvQ
	(envelope-from <devicetree+bounces-276913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:07:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 501212B5AD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7EC2C3017304
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 04:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571BD33123B;
	Wed, 18 Mar 2026 04:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z6ElmWlC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aTyEEP+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1993321A2
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806842; cv=none; b=OOPhjtjSklJh1L4fglRN24TVjmigiJetvOVFLHIAC6B3x/lkwXKlvZk7RWev0TJr7X/Vy57aPyjsQt+9bI2+mHQ7HS9ARX87hpLCqKqRitMV3oAgLj0MDqwTXQuL5WGMm9uIH1S7fPoOX/17AhqPf5RWm+D4woragMe+f6+WXpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806842; c=relaxed/simple;
	bh=3UXMGbI8WON5H1T63QkkNnMrXoZ3C5K4RVu3prv1os4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IHn0wF/2xL4pSbJtfhP/i3PdHO5RGSI/3CHKkTBYatd9lB1G5Fmb2fR0DZSxuAsjsTFoWBYFiLzqB/BhFmbm1b7zDcAwoHJTtMsS++WBYWXSE39ZO+Lu+S5AYE0qaDoQ0+9kLO1E7t2M4b+4p5naN/LTU5HOvrr+2AziJ6xoEzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z6ElmWlC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aTyEEP+D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I2v4W6084715
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PXXpBOuSHJv
	aASkuV/7Lh3OvDiKIdpCO2MCERf7B6gg=; b=Z6ElmWlCvF4iAT1FTv4cPPgGX9A
	iEfDyu0+vNBgWS9ntgXTup/1/z5zG2mRpM/9PqQtJO69fDU7sVMZmedGCs5L9U+b
	kTxIV0QrdZuehiXod+l5IBrm+veYwFusb9AHC/fVOb3NiPjetVxrx2r2aWYlZ/g3
	ic3/l15EMxa7HBVhaEOZdxKAfwglJNWDkaH1hZcYEyb6GENbM0vqyhALhR1uJk6E
	TPOnAF44DnY0/23LHn0c4V3tCjruT0/U46qJd5xrLtlOi/0FBq1wxncV/GdWVkK7
	yjEhpF/K/w7iW6D9lSwQ91yvu3IUP4qiSbeVT3nxV4mMhUWWXanDOZjFuVw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqer9t5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:07:20 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b05370ec01so207247235ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 21:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773806840; x=1774411640; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PXXpBOuSHJvaASkuV/7Lh3OvDiKIdpCO2MCERf7B6gg=;
        b=aTyEEP+DQkGGvN+L7Ls6d+qnmOC6Zo2Ts4VSMYNZayi4XubDi2X0EIrRGB9qQe5k8x
         EfiRfVZ20ddFFnPOwi/TfAFXO1ZZCyYOY8X74qNuE2wMjmCSsMo6gFG7DfnwhwTQfQx/
         ZaIaZ98ohHrAZX8c+P7IQEK/gKUW+h6tXeIA29dv5UFWdU3YRND6jn0Oi2Mkatdh6KIp
         sySb8yN0RokmlqbkX0ISwrm8DnJxVDmb3qe1NdH3J6AAF6f5kh6xxG6o+JtSzon7K1WX
         jLF3h3xL278aLDPXWzP8lK9QEXJeB83MEd93gsYnlHBGvt/oQmiL5ZE0AwhESjvp27wu
         2Hpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773806840; x=1774411640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PXXpBOuSHJvaASkuV/7Lh3OvDiKIdpCO2MCERf7B6gg=;
        b=ehigIcTKmPFUyC25DdkryVEAHvEityij0oUftLtJDczL3oMSJhyoku0Y4QkuJYMiiz
         5njxHyxM8jx9xqLNJFlifb/jo4sDi2hVTuuOF6+5GLbt9hNHyLywnrzyLawnwTUYL1s/
         dky0rBljRDnTtokpD/sILdRUM3y8RIU6VCdWrvTtavOd85Eg9taBbDHRBJ0zYvP29PiU
         PUi/DWruKFYU1TXF0fIv6sXMi4Cdr7q2KeBVIySDgiKk0jouPW3iFrsFDK/qUWr7zqB6
         L/0XSRsJStR5IO7qF7yMYCDH1YbrPdCeIwk2QHquULJA7qgUAqo5ZCT3WkbqVlEo3weJ
         V37w==
X-Forwarded-Encrypted: i=1; AJvYcCUSfYV5BLKgcvUSZ7wkBDpMXwHyuVkzgllM0mKcBab2X0DhZTkrp6d+IUtTaoPKIrAd0Cvomu3I5jbr@vger.kernel.org
X-Gm-Message-State: AOJu0YyHCY0CUqEMpM0yqd1F1j7MMxyRA+lqAPwwoDla52sNoU5p8S8e
	zyiJbbJv9ENfYJN8kMNGcL1FB6eGwXzkCQDCr/EfIjuejAebZcBBAx9aAYVeOy2Uhw8/dX4IQwQ
	B3zVAApUfRABV3lIftfEMlvHW9lIE4S1DOTmuhQD3tncwoarkZ+1W+BA9t9HS9T4v
X-Gm-Gg: ATEYQzwQHUjNCo3zFY4IXbEmjN4zec+bcJSNcstdPtWe/eXwFscWR/vMUq/bOqawKrD
	sqIY7jV47PHEX3/z467UhmWOasVW83qonI1PAcQW34kAP9GMCH2KSdTKTmV2K/C/ZzHhG4aZncE
	OxsbNqDHWigMwyh7MEGrBb+N6zRuq+mesEoeOygVdFKr0KzVvzPcC/s335CLVXzrE6uScl3Rap0
	1n/lfrgBOTEDsmW7Z37E1mKWtmaHQM8SEuflK8okxrJEMhDmzDoczVFLLTNiY701qHCXGUqreK7
	qAikBW+kI/YeQ4HF7qT44rIuCE202hl+CKvjFGyxFm1Is4lGd411jdnhHo9HQjjhnhLwV7dDmrE
	SVRuLTL9ppYHPhXD4VzWiIsKJR7nUZlNa+4wgQHVzSIqWeetMpQ20vjI=
X-Received: by 2002:a17:902:db01:b0:2ae:ce8a:9dc5 with SMTP id d9443c01a7336-2b06e339e4emr21552025ad.13.1773806839828;
        Tue, 17 Mar 2026 21:07:19 -0700 (PDT)
X-Received: by 2002:a17:902:db01:b0:2ae:ce8a:9dc5 with SMTP id d9443c01a7336-2b06e339e4emr21551655ad.13.1773806839362;
        Tue, 17 Mar 2026 21:07:19 -0700 (PDT)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f12cesm10243425ad.41.2026.03.17.21.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 21:07:18 -0700 (PDT)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 3/4] arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary port controller
Date: Wed, 18 Mar 2026 09:36:43 +0530
Message-Id: <20260318040644.3591478-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
References: <20260318040644.3591478-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDAzMiBTYWx0ZWRfX/N/4/bWo0lq4
 ker/8f3flb80yn4T8YM+jyb7yIKHL7CXTh1pigjJqsJ/O4+8ko2IBVakLshXmw02f4IPmiWGS17
 O4KTlWaoEtFGHtNlP1pB8sun5ZfeZbEUK79e4iWz1FmUGEmiyLKJflp2733VaO7UH+aSpPrjj8A
 EgD81V2x0OxuKO1CS9mJ4bIWWGLem0PuwF7RzKcdi8+Te2KNnXpMFwSitNlgTq5DcfP6UCFrCIQ
 +d0co3PvRGbBNfNdH0X43BuMf9Rn+ITBtFvLx0rO0LyvT5sPjS0aD8dE98Oxopwp3DUoFOj8dH4
 Dkf8D1aTvZ1pHkQgrKB3M8iCRfqZChBffoRjjuCAUYGoblZZ4XPRjTv7GY63oSoMsbGn1m8mGx3
 V23XSQTHpMtTqW0zhaPaDVjdKaTxh7eN4rJ1J0JgXR0wHDc5lp95lUp+HvGSiNOZfQahbfb7sBB
 KTmVlRhVgL5y0xJRqaQ==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69ba24f8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=917_i3xC6rPZgS4eXuUA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: LCU6OWARTYl8SB9hUyymULF19AW3alf6
X-Proofpoint-GUID: LCU6OWARTYl8SB9hUyymULF19AW3alf6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180032
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276913-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 501212B5AD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename the hd3ss3220_ instance to improve clarity and simplify usage when
adding a secondary port controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index a1ef4eba2a20..2d7eace9d7ac 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -62,7 +62,7 @@ port@1 {
 				reg = <1>;
 
 				usb0_con_ss_ep: endpoint {
-					remote-endpoint = <&hd3ss3220_in_ep>;
+					remote-endpoint = <&hd3ss3220_0_in_ep>;
 				};
 			};
 		};
@@ -550,7 +550,7 @@ ports {
 			port@0 {
 				reg = <0>;
 
-				hd3ss3220_in_ep: endpoint {
+				hd3ss3220_0_in_ep: endpoint {
 					remote-endpoint = <&usb0_con_ss_ep>;
 				};
 			};
@@ -558,7 +558,7 @@ hd3ss3220_in_ep: endpoint {
 			port@1 {
 				reg = <1>;
 
-				hd3ss3220_out_ep: endpoint {
+				hd3ss3220_0_out_ep: endpoint {
 					remote-endpoint = <&usb_0_dwc3_ss>;
 				};
 			};
@@ -984,7 +984,7 @@ &usb_0_dwc3_hs {
 };
 
 &usb_0_dwc3_ss {
-	remote-endpoint = <&hd3ss3220_out_ep>;
+	remote-endpoint = <&hd3ss3220_0_out_ep>;
 };
 
 &usb_0_hsphy {
-- 
2.34.1


