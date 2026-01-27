Return-Path: <devicetree+bounces-259880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFjlDOqueGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:26:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2BF94513
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88077307E306
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4C634D929;
	Tue, 27 Jan 2026 12:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmimGFay";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HAp17+XM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFE734D4F6
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516591; cv=none; b=Vh6mF4Ncbk7HAxtM9n8poUSURCJ+U9wIpQcwwkc3z99guaEXNQWgu6LpMhkLsdMS7FhexzAXmD8BcfZ3eUeMAl4novubfNWGnYb7MXkhkHVrw/NlYSTcsgKB/RdmTry0SC+z4Xy5k22FlrmbUV4M+6NTef08Lh4jvX2fb9QM9qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516591; c=relaxed/simple;
	bh=lyD9r8HWDZrBnVMci9MLnlerwDf+zMBRMTff7QgmqOo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rYg4khQW8XVBdVdt0o+/1PS2PGCfr0npV0n5P8OKEHHXGKOzqo++TloeQuY+ZJWPcJ+sohdlD+nySx+9fOd+nizfNfN8gmAJa3gueCZn22OLBIr72E8JHVdCmvfRsnUZUtyMuJ4O+6ctxFgoTFn+gWud7F5lDDNFEmwLnKEl1Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmimGFay; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HAp17+XM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAY7hC184806
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aAz3ii4wc9r4o1zN3sZnB77VS0DlqcRsmrvn03+0byw=; b=LmimGFayMW3TvRHO
	hNQUw/qKjFc9+htrKq5w1TixTqpsskcibJnXRJRVpKjDqBohulNIDYPlg6ua9yZr
	B+Na8QsC0nsJtHtV09uz0TBFZJ1hVphtIZZcuIbWPCYqUPC9fqbEQiP4uzMsnkgR
	pkBQ1/nRXYmVZWmX1OLvdLSgZIcDL+3azGiPRwGYLmE4bBn+XdHuUtXN7egF90D8
	Ix6wUulIkBs/tNbz9Ak4ycjVZPkKaQ+2Si6RRjLPHzQpKWnsLvTR37GNpfZObL8t
	jLNsd8UBeMwXW8gT6gU9p1MaaIX7Sp0olbtIsBSrDoFeXSNZVHgp5R+b2BAEFCog
	t1qHiA==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9k06q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:08 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9480078b2e2so7831545241.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516588; x=1770121388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAz3ii4wc9r4o1zN3sZnB77VS0DlqcRsmrvn03+0byw=;
        b=HAp17+XMl/dnGbn64OQHNABwPSyqLFzil1a0+FqeJSdCZYeZCppwjSFBqYHAAI7e9T
         QD0YeLrwUNQFwneSbfxNEtX5N2OHyzCjuRuSZEpDPKhY6//u7kd4tUCz1nDOzjOy4e+D
         14G/6ApnWvOnI1UUxt6FyLYb2zQvO4A0xwmXrTkn24npEH0ZWdJCqiVyIgeLcVaNhQqO
         +dc0y+pdNgi6WsIGjUEU0RtL8L0pg4VZbIc52QXEpMR/Hrdv8PVzxXNPPDRX2sBrp2eL
         3O/3vzCIod89MTARas8sD3+6OBIsv7bd5h0zjPXAvXhvgBNiBGR6iAfp4qnRDXgXH/tI
         j1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516588; x=1770121388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aAz3ii4wc9r4o1zN3sZnB77VS0DlqcRsmrvn03+0byw=;
        b=FDK3GmzaiM4fK7EiAhuTWwalFxzHEIUy5m16PPpnNind/vxesjfMRWYMA6RHkiswJV
         3Q1NkjlpcNV+fCHLYsn/bv57uzIEQB91XKwKAvLoB7mhdEHFcxkSi59+t1hWkgBlsaqz
         Dqo5BBXFTAgLCpGMrTaU06oc5Q+G46EQgp2M4jvHPeO9e+iKsTY/0HrS+nS8P59apuyR
         nvLjoVSrknj7OdipLuazlt3OqU644zJNC4e8VDkzgoK31634fIvk8xVmq/z9OWs4Ss+q
         4lyhicFRxkoumnDozdRBaa2epY1IMGpQvcT/O4mO7b2QsylP6dFFSxi/PftyxujQBuG+
         a8Hw==
X-Forwarded-Encrypted: i=1; AJvYcCU8EsuTSXJlg0hAcIAWuCa5x1h2NjfGo5hT29uO1GdrqwVtqDuSVzAIf+qnTNKiR/3cFN0u7qDEhDV8@vger.kernel.org
X-Gm-Message-State: AOJu0YwSPxj1FsvA4H6fLgFE+hPSI6KC4+n60pO/RRcBGeChOqvSX0Ru
	G1kveaP79q7+zUyyKExuJxSTmjJ2WCJPyvf1mCZqziZdKhvNhpw2Bg4WhA6dJ0H+GfOqB8eChuG
	XSHPSL+mj5NkcMDVDdiGOHmUikphn8fkZgD0KhuW8XBZ7wRHg6NkQXbDIFoMN26GR
X-Gm-Gg: AZuq6aLrV0KQCBNM2VAQYrJWYX2BZ2/kHEZDyTkT8C4wFfmE+8UU2CAHPQKauCtm5+u
	c9QsAGThZQFxu6l3dIfZ2zMmUoa3/4kQli894oh2EE1xkvAAGTEkngeDi+vpN3VIY1ZbmbYack5
	t/sDkWNh4UmxpKvy5KQs+exn7rrS5n+W+0bQ1Gqn5A+m80yEcxcuQgbAUJvd8Zd3hYl37aMt5jR
	bgBz4QRyzQDegxy0m8s4Fy6MKY1F6TJg6ra9gWTXPa4GppMwfRwKGNouasjI/bv97zMI0buR6DT
	GsYvhDPsQoKFinaLGxj0vCMVzsdewObfpeO7OK09vPlt3HtAhk+KPzqcqlnwgw+z8xJvHICn8c3
	7E3RZctMEiecT4LF9mJteP/B8QJYdGjXtqGFQ6k3q/qk+5+6rJ2olGv237ecxBWH99Ga/BmIiMk
	go919jWLRcZZ5qGp9TR5MODhE=
X-Received: by 2002:a05:6102:3e89:b0:5f5:4247:8d08 with SMTP id ada2fe7eead31-5f7237859a9mr656263137.21.1769516587505;
        Tue, 27 Jan 2026 04:23:07 -0800 (PST)
X-Received: by 2002:a05:6102:3e89:b0:5f5:4247:8d08 with SMTP id ada2fe7eead31-5f7237859a9mr656260137.21.1769516587077;
        Tue, 27 Jan 2026 04:23:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cc4asm3375442e87.101.2026.01.27.04.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:23:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:23:01 +0200
Subject: [PATCH v3 2/4] media: dt-bindings: qcom,sc7280-venus: drop non-PAS
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-venus-iris-flip-switch-v3-2-7f37689f4b39@oss.qualcomm.com>
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1855;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=lyD9r8HWDZrBnVMci9MLnlerwDf+zMBRMTff7QgmqOo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpeK4mu0ymi82vMiHpRMsQepeIyTEDwR+G9qVbB
 3qcuSwTW0+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXiuJgAKCRCLPIo+Aiko
 1ZqVCACvaZu/vyK3V2lJKYdNcQiUcLJJC9cK/u4rVkzxqRkN0Ctpym1LB6rNAf+ZI9Lpeznv5e3
 k8RNuvSylR8wqr822kay0QxK/ZVo9mH23hDDcu8zqmHv5LfYa4l3D10ErN4gYDU/vU8sedCt/pW
 PbdhqohMgeNPG90NUbwSurzWMazEjUyRZp5ktjMN0cpX6Hmz7Rvg7+VlAJ7FO+5aEP4dQEpxrJ5
 nxk8ttekJh2sE+F9EbRlEVcA05EyXHZhaNzIgZUCIa8oVO/rhEJONqq6kBK6JTz7/+/M1AMhkxA
 OscHTFVqxFjfb9/KZhPmlYOakYKaMtV8nAgPKYPbFakb5ZEs
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978ae2c cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=zCM7-lDapuS4FQW10A4A:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: EIT0sBKUSC6DxfgAObKreg4j9X40cP2-
X-Proofpoint-ORIG-GUID: EIT0sBKUSC6DxfgAObKreg4j9X40cP2-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMSBTYWx0ZWRfXxx0q6w+4KZAH
 UC0zsmxbHmXeOtCdZo22dB72ETVCHLujuHBDznGAjWrjLsEwqwcOKdWSpq9khcVUm4Nh93nI2nC
 zNLFOsEp+pDyYhYWi30hbZDzfhtINsowCZn8hTGnlmrgwCMHBQnbtH5b+gkzWHVwpul+o0ZwI/Q
 IICEYajsTgepXdycGc8x+okUqSwSXQZNzg4Vs8E0NOWrhTLIkYM7sMl6PEqLPV9KeslMYb4mGP4
 gE0pH2gMhg/sRtniz/U3lf//sKLVnGi5h9QTjzqqKeYb6sJSwiwiVd4qWdO7NrPkm5CEEsl/Jah
 iFOG0dNbV1jyzs45C3MX/aH7nxbhNwLJaJdzBby+xFbdzj9BNiMvgl4P+Gvd5olgd+uRqInq0uv
 Hr+Me3lBUrh6GlxIo9bB0EAFLwhmF+ImAnNmvPwqXRPSnF1/RVnYwWwQnPYT09XBO6p+vwUQMx6
 yWB/XKVKRlH59RDVQdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259880-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B2BF94513
X-Rspamd-Action: no action

The only users of the non-PAS setup on SC7280 platform are the ChromeOS
devices, which were cancelled before reaching end users. Iris, the
alternative driver for the same hardware, does not support non-PAS
setup. It is expected that in future both Venus and Iris devices will
use different ABI for non-PAS (EL2) setup.

In order to declare only the future-proof hardware description drop
support for non-PAS setup from the SC7280 Venus schema (breaking almost
non-existing SC7280 ChromeOS devices).

The dropped iommus entry reflects the extra stream, which should not be
treated in the same way as the main one (which doesn't match the usage
described by the iommus definition).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
index 413c5b4ee650..9725fcb761dc 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
@@ -43,8 +43,7 @@ properties:
       - const: vcodec_bus
 
   iommus:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   interconnects:
     maxItems: 2
@@ -120,12 +119,7 @@ examples:
                         <&mmss_noc MASTER_VIDEO_P0 0 &mc_virt SLAVE_EBI1 0>;
         interconnect-names = "cpu-cfg", "video-mem";
 
-        iommus = <&apps_smmu 0x2180 0x20>,
-                 <&apps_smmu 0x2184 0x20>;
+        iommus = <&apps_smmu 0x2180 0x20>;
 
         memory-region = <&video_mem>;
-
-        video-firmware {
-            iommus = <&apps_smmu 0x21a2 0x0>;
-        };
     };

-- 
2.47.3


