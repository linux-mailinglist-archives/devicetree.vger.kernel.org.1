Return-Path: <devicetree+bounces-258952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOdMAKx5c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:37:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFAF76584
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EFADF300C32B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED6A32D43C;
	Fri, 23 Jan 2026 13:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lLPBFHHi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MyWQSo8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2F8328254
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175456; cv=none; b=o0Ef8GYOitZIquEgC8936DLQx/z0Hty+dcSUfvrdGRDe2JmPj41PleU8Qvwm7a2xa2obBOWkkFPFS4UVg3tb1d5ZqGuxk2BpAUjyy3wffZVxJRa51fSouwo65SJCO8IRyAkAlmwvwowiSCy1x7TQmeQ/n6EEjtuL0TIWU9MDsr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175456; c=relaxed/simple;
	bh=j5wglMmNeIkAtfucmojF7uDjxPcw0Gowp8q8oa64dyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qub4iCNYL4TjkHlxEVIg4bSwCLWrhDWXbKuIw7BrIbPcUuKm6zk+H++u5uBgSpvk0iVWH4DAUuerhVoehwPDTSXAKeX99Z6qTc4Dw0at3y7I1hgnEH6h9TL2pDlil+7M8cQi5yU/ft8mOp3y3EmfOgaOANOalSY/7PO2/s/6TgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lLPBFHHi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MyWQSo8b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NCxHv71325867
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:37:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=; b=lLPBFHHiIh4Z87w6
	frfpXolw4tbEI9a111BWTPe+UW1xokEDv+nPbgT5K35zGHs8gc0RWImpHlkzWsXL
	pdkox66gPqnsMSeS6EnqdpfJ2pFrobIQszSm0ywGFd7gtEc9Z7LdJ7KEQQA3SCdq
	if7dAQjSRyZAQYPznOmgepbqKYEDQsiJ12YbKEGxKd7K+xlbM4NoAo952bk+ab1S
	7OsTvR8zkfc8az6Iz69vsMld8f5dkfJCs25bGFtR/53Kin0RpjNf8CycmKH88iUN
	YP4VoxMZkIdiLCd5Uj1bf8EpqG2HzadQU67KXD2pSHSpzdispQg44VCL+/21NQEv
	0F/Vuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv44c9fa8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:37:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52af6855fso290014585a.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769175453; x=1769780253; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=;
        b=MyWQSo8btdtUMGX6gvQLBD/VlJGLDMicQoUUl9So1vtGLGWCSua8aejsnjL+A8pNst
         Y0Q7JTlZh8BsDPtyiTyua1or/eiLteIkQ3Akk8ALmcxd1vo8U5Dyx6fNqxIpOjlyGUb8
         Ev8aXYfQoUm9+BlKYeCuBBFoAcBWzV/zgszZczG/TZXV/g+tf5+DRlfKqRNhFbITCghu
         WKNRPnq5aupBZFrSRXAb1YwzAjj20M8GxsJGJw0GC2vIZ9iNjaF3DoNBWdgOXdwGh5jr
         WV5FSkqqiV2aja5LzZEv6jNTnQW66neyPN9veW2VF+4NE8yxct6Au/fdjNFSX0rBTLNX
         rH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175453; x=1769780253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=;
        b=t6lia23nzdopYjZW1JZPftE2EGv4AhXAAHFdFyxIuaOOpWDRyDbuZ8WXBgNgWuBJ77
         ypU6/Hbw2IM/nfTKK/OEeMyEFfXUg6Rz3k8mJitvQtqmgG8yZqqGax+xq2bDjEauObZy
         mEPUi5FUKBpMmnXuh0U4vGv6Me/d2ee4ykDHNAcm5oD8dNIEBJNBFM3AAXoP9Sf+sTqI
         5oWCmWGcbEiqfVAVu7G+qT3F7bQcuTQfcTIFcCDhYeYQvfluQ5UO7a59Lb5d6/pIdCw4
         A6meZ3bL8IZwAhWN9RkR3LEVK+i4JULygh4kSMKpCK0WM9TD/HnO2EnF6VlJtP5XlsE8
         3c7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJcbUHo+vO4C7rDR04t4JnKBURu0i8dPbmfNYUb+QkwGmXyF2cAmx5p+XhNh0O5F54AAZi51epBLzx@vger.kernel.org
X-Gm-Message-State: AOJu0YyrNiS13dL5bSLSAHe5khxKoCHthDgHSEgxKBdaAC8NeStn45Lj
	MX1sgfhtmQ9eM6JNYoK/PGAm9E96/auZDIM5ateu0XtqA/lYyRH/O7cJYUv3Fmxa10gnTgD4NWi
	vjw4/T2smPght2r2qgCLwnrt6gSDm1pREs/iJ16c9dOS5fZ9I03EkMIfxT1Oc7HwS
X-Gm-Gg: AZuq6aKbVJ/IAb/R4LsmV14xjJUzavpvTcMV3Xeqe0X6lEjsevior8fJR/VlkIL8EIf
	9p60bpME7BtaqwRqLJztBH8IAx89Tf4pOJGPjKctY7kc32zKwWZZtWt7KLCKn+IW9HjOY3DLGYI
	J8oi5JS60a7+kZ0osuz/YkKq+d1EKmFhq1exftDQV/mi51oCvggF4d6x6vqkIXe1D+4RCxgS5s9
	ZQQtgQguK9tVNGyz6fc7iyLljcBJ20Ro25Yw1S9Rr2wx5MLPZSmnCv4u0vP+IJnwNciTru0XPbR
	lkZEF+5CFVF5pVxhZctx0z119HRTp7dVEYqVbRisOxHBh4UzesC1eBZTDq9dX+J4wbZ5otE0rYD
	BrZv7RGTxOZyObuuRQg==
X-Received: by 2002:a05:620a:46ab:b0:8c6:e0c5:7bc0 with SMTP id af79cd13be357-8c6e2db6cfdmr346379385a.36.1769175452468;
        Fri, 23 Jan 2026 05:37:32 -0800 (PST)
X-Received: by 2002:a05:620a:46ab:b0:8c6:e0c5:7bc0 with SMTP id af79cd13be357-8c6e2db6cfdmr346374685a.36.1769175451716;
        Fri, 23 Jan 2026 05:37:31 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e7156dsm6649882f8f.20.2026.01.23.05.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:37:30 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 15:37:14 +0200
Subject: [PATCH 2/4] dt-bindings: clock: qcom: Document the Eliza TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-eliza-clocks-v1-2-664f1931f8c7@oss.qualcomm.com>
References: <20260123-eliza-clocks-v1-0-664f1931f8c7@oss.qualcomm.com>
In-Reply-To: <20260123-eliza-clocks-v1-0-664f1931f8c7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1861;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=7nkLWD3sT+wCjfvITR1Dc6nUzmQDoUNZNGDCrbq+iOM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpc3mSGWmI6bxDMFGtJrbfkyc+0hAZMOW0bpW2X
 H1CyXpP0h+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXN5kgAKCRAbX0TJAJUV
 VoawD/45IIRoF3reR+wqIdpfsrxzxUCbkgdzomspPP1uWFtp7P5tgm+Ot3Rbkz5NVRNwrVNiOCc
 V0aZfOxiT6Tj/6q7j2erP4kZd35YiymzGFlm5e4Ks6Id4kzMsmd02RbrJVM7MXN/savQ354E+wc
 KD4gT0D9R+y1isR269M69HCKy58bAg4rPO5Dn9wI54SeNpxoekyOpoa/mZ0sFlhHHFeST59fRsq
 2S4FdkUgY20alve0Q+ajLe//8s4fCGKuyQ0nmldwOHQ9YZfw+ZXECipP7/yJE6NNMVGUkl5+qp9
 FVcKyYsVUCWagOuO/7bUXOm1jQCiXTeVomcWfZvwjyRh9Aj8RfvtGvGUZLBk3XoekveySw6HkLB
 xcitCtlWq//RMEstXW3XT66WiZXkDFBGhlrFdRQZ3RVdLFtZbetayJi4YbH6gbtMCGFEBwmflpL
 ELHSQwuhoq2h2uu5v0ZhmJshv65w0PR6vbl56KWhkNgiNLa+dG3/ivPNkYb7dJReThGTuri2pIN
 aRe6aT++JIm0ktkHK8hSxEdOrVmUaI8NY9naDXLqO29UaBSWG3QGXYX3z8x8b6w6wH3PGtOrPVS
 r8WO35IFarW7v9VCgBFtgbzb/WzBrif0j7fXj1IoSYdBcJECAW2Ms9gbHZ3bGuhByyjlZDnTGrs
 f2mY8jcFBz07T/A==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=TLdIilla c=1 sm=1 tr=0 ts=6973799d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=UWqaS1yFD4rTGqj9qVkA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: DN1V8pdNIAg3T4tEv-TsUUrzLw1YBnBl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDExMiBTYWx0ZWRfX9++d1QAWIEfX
 Ygh2RP4o9DUxdP8hhcgJHjyQ54nh5YdBRZQEgeKVwwIzJG2+OoS0sxFfqlrI3eLr9h5uUq2/N2y
 +t0G60G9LMbNh0XcFWpDazeOPCe43So42kBVqlRwY6P93UYJD+35uyIG/8/wxxDXXNMTSxrj3PO
 D3C4S4iwRAj8rsmBP+W2o6xkPhOqia5xZCelWq3NMbphpaxrdkluey79JYyv9uZcAuNQ4c4q0fe
 GKUfn2k/8YN9X+zOU1HqR5Cy3OZO7rk+Xxuxz5j3GucLFZljQ8zdudIG2DLDGRl4VRICmPR7tZA
 M02Ve359yB7lk0CkB4DsCxyLhDWH0Tq5+Bkji1265py6d5dH5ortkDgMBJWZn5P83DtI3KNN6uW
 UTS7Bp4CHKBrjJvrwXYX9bWv7WD3IACipqc+9PFnOXqBBuK6hv33v4DVzKYc0gcSbNLxqEjrb/B
 6OJLM+6hOdt24+VabVA==
X-Proofpoint-ORIG-GUID: DN1V8pdNIAg3T4tEv-TsUUrzLw1YBnBl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258952-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BDFAF76584
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for TCSR Clock Controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,sm8550-tcsr.yaml       |  2 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h               | 15 +++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 784fef830681..ae9aef0e54e8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -15,6 +15,7 @@ description: |
   power domains on SM8550
 
   See also:
+  - include/dt-bindings/clock/qcom,eliza-tcsr.h
   - include/dt-bindings/clock/qcom,glymur-tcsr.h
   - include/dt-bindings/clock/qcom,sm8550-tcsr.h
   - include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-tcsr
           - qcom,glymur-tcsr
           - qcom,kaanapali-tcsr
           - qcom,milos-tcsr
diff --git a/include/dt-bindings/clock/qcom,eliza-tcsr.h b/include/dt-bindings/clock/qcom,eliza-tcsr.h
new file mode 100644
index 000000000000..a9ee1e45c17a
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-tcsr.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+
+/* TCSR_CC clocks */
+#define TCSR_PCIE_0_CLKREF_EN				0
+#define TCSR_UFS_CLKREF_EN				1
+#define TCSR_USB2_CLKREF_EN				2
+#define TCSR_USB3_CLKREF_EN				3
+
+#endif

-- 
2.48.1


