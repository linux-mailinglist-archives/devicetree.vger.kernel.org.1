Return-Path: <devicetree+bounces-261457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPhcCh09fmkvWgIAu9opvQ
	(envelope-from <devicetree+bounces-261457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:34:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE58C33EE
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 18:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3BD03008459
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 17:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD0535BDA0;
	Sat, 31 Jan 2026 17:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2XtvVoV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cFGeuDdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A6035A933
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769880839; cv=none; b=CzCpM+CaMF/P64MmdkwX9BjTCTpSKktGw+WoZ4JdMoOdvi1wuRNIL/CiN5AjbOiT2guizLAbrRzOnvIi4S3GrWwg2U/IRkyxcD+ePbXKIPUoCdxf0uVi5rwEVc0jQMhsWDwaB3pZRMnteUACZp2P/Uw8lRQO7cUI/FO3sd3xKvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769880839; c=relaxed/simple;
	bh=32YQR180l4XuatpViT6nfN9ULShKtuaugvJ8/48mdxQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jz6rfi1bNq+QWOVz2eGHtnDz1sWKwDl4aB+MMVL1spjk/BsvtCzxFUm5SBNE+wZvDSLPWS6C3nyIOe/AczWrhaGg8FafC6Xftm4vU93gPCrQd4i4qeipJ6gml11ItkpT79RWEsnhSIhPs6WsD+2Iiy2KsVWSb8RIer76uz0gE4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2XtvVoV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cFGeuDdp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4T7I13957078
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=; b=N2XtvVoVvKtMGc7i
	P+w7xdZ33E3C/9tG02ncwqqO54NVvgQpQmcKtFt0hUXOcDShut4s7P9ZMNPhlaLK
	A4Z/QUg8u3lZHzvx8XVtW9kSWCmlPO55KLARzGvNwP59xNccnvJmnjC07kmKMLRN
	TE2sWwL+t1GtqWpYfOwCKytBcFtqChpOyvW62uTsr/bOzyZS0zhEZN6pUgMVadeu
	gOIOpw24yULbwloHhzGvklAtmh9yOL53fsc/ChsSegHhfd7If4o0PrvNSO1I/UaX
	Bcp9lK2v+/lxLuwVjK+utr6dN/4l9M+c/2r1ZwDLaorteBnJ4jvgI9NdQakeE0Kr
	NMYl+w==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1are975r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 17:33:56 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9483c030e3bso10532301241.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 09:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769880835; x=1770485635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=;
        b=cFGeuDdppsrreMYF9r8GKZfiZjZmpwNrUxQ8Tme8X+TjCD1NJq6Zx/pyUZx6zYbwoi
         WRytFZE61saLHLs/HSpzrUgnV5fqThGUuy46dIhY1/Qn/LoZ1qOoxuw3oHDN6ddJ892K
         b6YDlCPjrKQEvz6B+yXWRjtMMXpoHEg0k7+l+1CFv4qGYoYn+8fV7HIzmxjuZFRtKwl6
         gv5lzTjhQDGAQtYWM0zmDA/3DrfLURSK52V3IIqO3D8giSr3gafjl+2WBOU2zvdSNz+H
         Ke3QNmhIOw2NxCF+jVNoAZu+b/Az2X5Dlv5f2TAM5l+YHD5lPnb4+INwzM6X095IkafX
         0f/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769880835; x=1770485635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M1pl67zhaQRIlZ7r7pA0ZyoUVVuJsyuZALZX1rr0pn4=;
        b=K5Un6jKHAgM1YoBjFxIux0li7yL/nfT9G+BQgC4F+X+MwGh5lxG+maFVCo1R+RX98c
         23FfFZ052VLso8+ZHiTJ4zPANEfA3mOSG7Yg3Ybcne1X8EkdvWeivb+S7qzo1o4Ii+BY
         MnMX09zGZArHtDSYO/QgkHXYsMPue/wpC8ly+ET0gOBsYK7d9i1qz+RsWo78dxoGflaA
         61xBdoMQNTw07SoKlcd7QCIF+vXSKls9WfW6TbqgU15W3N3vUQ/kj+Nxy7gVk0RIHKb+
         LH+McyTHZUCMIciuwRppLUCPOobgMI5B+K4rXcwkH8wqqL4eKgVFmaG2Ue1MBVKGi7x3
         C8+g==
X-Forwarded-Encrypted: i=1; AJvYcCUqemo8IWEEZpyhqCes1nbWDBggGPi3LFLGi50jYlnTCDShFLG1UHgIqFdIi+qhTzG1f3SxIGByFbMY@vger.kernel.org
X-Gm-Message-State: AOJu0YygX4YGHAiIrYvzcJhbmcu+kIV7uwxWUHT86g4NzgB0tlnBszEi
	LwLZ3lmT+sSFM0lJICWYoKPpHlgi4Mcu3VqTm2H6SXAnDum8Z82MuxlCO/4kaFGIoWwPbj531W5
	duadyw5cD/d0HD1O947kyllgxWxzJMXRhNTGc0lnug5h9/vkX+HAXLnjkn8ugo/TB
X-Gm-Gg: AZuq6aID3MIO77nbV3xUsWzpc9oq2c9heHaod1wfF9zLeiQdf8OTdf4tEpsmOHl2yjp
	vX50FnibRTtmk/82pRQeGOX7ClVTtdNhEjzVBBZQAfAoLVGHzq4X76ehcJOkS0AOuk+6qXyVnKe
	jGeo4T4m8oXEgca4Paii738t8Umvbk2uyaGwHEVoijgbTplBRlbQxi6H3Lnz/jJfZTe9eZTlG75
	bQSMbf+AQM8snlbzv1rD2kCVRYkYnv8EfAiQPmi7DPhFI1zYlySEHzIYkmTobgR5Xb+lb5Qs5cR
	grVUl0haQ3F+vJ4whdQ68k8PcGDcFDuk6E4lOzqp/IoM49ky/Oql8iH2wN9UGJXskBu1ejoEGsn
	N0C49dGNwks425QRDNJtuC4ta9cTsYGgYKYGgTFSXskmfcKAHznbZsKJDv5sy3IHqd7fzocqHN8
	HjdmYbdB5ZXoXIhYilf/3f4tY=
X-Received: by 2002:a05:6102:2ac8:b0:5f5:259b:66e1 with SMTP id ada2fe7eead31-5f8cdaa2fc8mr3722628137.3.1769880835618;
        Sat, 31 Jan 2026 09:33:55 -0800 (PST)
X-Received: by 2002:a05:6102:2ac8:b0:5f5:259b:66e1 with SMTP id ada2fe7eead31-5f8cdaa2fc8mr3722605137.3.1769880835147;
        Sat, 31 Jan 2026 09:33:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074886f0sm2443236e87.24.2026.01.31.09.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 09:33:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 31 Jan 2026 19:33:44 +0200
Subject: [PATCH 2/8] pmdomain: de-constify fields struct
 dev_pm_domain_attach_data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260131-iris-venus-fix-sm8250-v1-2-b635ee66284c@oss.qualcomm.com>
References: <20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com>
In-Reply-To: <20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=880;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=32YQR180l4XuatpViT6nfN9ULShKtuaugvJ8/48mdxQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfjz+kozKhJSLZXFwUNSKEuTT/hOBSPTm33d2S
 Fku3cGVJ2yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX48/gAKCRCLPIo+Aiko
 1SpGB/9+OyNZPfI4xAgU5372SEe75MiUrRaQNOjN0AV5lSPjuhkv/F97SIkLrKe8KRSJ77F3TWp
 yUIsOB246en8dBzWgeqSlUgVLg7y76H0oxGP7eqDshW+4kh1jHNvKO1L0YjmQEFmrQ4wf6/cmd3
 RhACkaf71ELUYZ0TmC/Ih8eYIIPtK5COv5vzeJriXSCeYbv0r5VEWzitnpVAX+KZ+nSoVOE6CUE
 p8WgyOflHMMlVQ/hrB9V7zi/Xg2jHwon/CWcrUcjK+spP8lxHKJJv/7nWpSEPNO9xQX7S/4N126
 SVOpQqQ+4SeQC97WJE0WQNMg2w1RMk99rJ/NoMCo+1i11Xsy
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=697e3d04 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0MtQHd9Mo8yxAPGUVWwA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: 7Bp57RTulgjWT11wLFU9Z21utS7nbhEX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDE0NyBTYWx0ZWRfX0xk7MLxpL67J
 mmES7ZlFb1RsEYmbJt5vwDPqPBaUD2iOcRKjmQBaaAe+yaJE2lQU7gT2OUZ0GiXfETmgqTbR7kz
 1FlC+mMt28I+Cs/gJeY2dR0NQNJWxDhliZ4LSz4WOXhHJoqaX10IIkLvF4RcyatwKXtf2VsdJl3
 uiWquANbzlvMW/3trrK+97N7WB4+0X1ftMJIGJDoNezgd2npqrHRATf6E4d0E1o22uYycFMVxT1
 kc5e+eGNm6mlfK8tBJH3q2R3eWJB4FgZSJMlc4QJMqNjmGRDBUPLmA2uoLlePjVPqIjSWrH58a5
 zzjc3BDygUUP8vLUQkyZSaq7WGToz4dIqgdLyXLH/UBPVqSlxG4JB4+JNd+vthVKqJ/D1xsXjl9
 BiBfcGr4DlT+glW5aMt34O7h6VQuo0Ubd+X3bM4LizI3WuaTkDMatnDepRvI7KZpl6+XyrCPMyG
 KWF4IvWFNL8xNfQbr6Q==
X-Proofpoint-ORIG-GUID: 7Bp57RTulgjWT11wLFU9Z21utS7nbhEX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-31_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310147
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261457-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4FE58C33EE
X-Rspamd-Action: no action

It doesn't really make sense to keep u32 fields to be marked as const.
Having the const fields prevents their modification in the driver.
Instead the whole struct can be defined as const (if it is constant).

Fixes: 161e16a5e50a ("PM: domains: Add helper functions to attach/detach multiple PM domains")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 include/linux/pm_domain.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index f6f6d494f728..b299dc0128d6 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -49,8 +49,8 @@
 
 struct dev_pm_domain_attach_data {
 	const char * const *pd_names;
-	const u32 num_pd_names;
-	const u32 pd_flags;
+	u32 num_pd_names;
+	u32 pd_flags;
 };
 
 struct dev_pm_domain_list {

-- 
2.47.3


