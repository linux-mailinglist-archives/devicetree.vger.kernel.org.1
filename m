Return-Path: <devicetree+bounces-269932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B/bAndxpWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:16:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 596DD1D74EC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC3E7304D954
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8F836075D;
	Mon,  2 Mar 2026 11:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SD1/ZOh7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iFGGHL18"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FBD361665
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450054; cv=none; b=eDJ84rzffKwZUPpVAXrwfB6vmIn10UqLp57jdh70GFctrC7soo53seuJxqve/6kKhwxqAZthr0oJTboNJa3mFPSfapprEjMheSuIX4ifgFfphRtlC0z8VHmuOdtbgWSddQqgjJVeJ2Buid/kF6RgG6TZYLRZa/n+fUArSjl2jeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450054; c=relaxed/simple;
	bh=OnD+J3Txy8+h5PHGhwbuMoSIh44riSvoH3it3jU0of0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=rjoZ0kfJgcFnpQApIPH3ykNW+i2VOpzmTCfAm9ZkDHnpY6ZxaV55nyAGK6zo32EnLSSKYd0yf1S3m3bz645XtxFmPHqHq74BcIXbHlksyMDB4Mft7T/3/ZJaSzNgfcO2va+EFTsFLc9xg52kKOWavPENc+AYQ4StUaHIoMgQxDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SD1/ZOh7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iFGGHL18; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62285Y3o662249
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:14:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NIYzi8A148bpyLheKetwZ5
	Kk3RO45DknEenbydeicmI=; b=SD1/ZOh7MqleiVqq19R9Ae9tv32NGOj9CjL3/U
	BXx3VVq9Fed6w1TOapBjmiY0/eLUrku/alkI4xRUPBOBmNSCtXBsVYOnCVt6tYWt
	u+5x9H6BB9K7AmH167b90xLacLSpXcTyjjYpgpQ12Hn0NnaKucnB3yigzq3OfGvR
	XpKQrpIhuw9Sf7L5AW+SbOtPTix3a1UnacWACzgfhpcDTUbND7W58gsjK+LDbaX0
	Y/xPkwIsfDdq9wbPIhbLFXdg9umVJX0VKzQCS4ql8M6n0bOf25Z06uTtC8/M6lxS
	jEhEF5VTHGb38j3VzaDb7Dszt5YknlExQi/tSzrTJYby4EpA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2rr9x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:14:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb413d0002so3767049885a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772450052; x=1773054852; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NIYzi8A148bpyLheKetwZ5Kk3RO45DknEenbydeicmI=;
        b=iFGGHL18TDw42TnnuekId87BrHKoK2xM9gH+pJCIL8V5h+T3PXE6gdoD69MlmnCjSs
         a/JQjYRoGUfTSLI2AySSnE6kL8iet/U59fpkW5EW48zVT8GJBARq0Ur/TEos12naFKsc
         nFDx4FWmOx69FuoxuIxB4851d5qywBDEoBv63OkrvByFX/Tjl/Zrmrn54hGe2x1F03Xz
         pcU9yrDUA93DjHlS7bNSfmwzCJiLESwmyhiwwLbm2nboGsOXWOWhMT8YyTp0KJUQk4Sa
         CUc/YOLYlt5alsGZGr1vapyO6MwAyehFQ9IA1Nds6ipla2znmlh9GaX3UVN/PlBjiFFH
         BmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450052; x=1773054852;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIYzi8A148bpyLheKetwZ5Kk3RO45DknEenbydeicmI=;
        b=mVB3Mp0rVOy6z2SVeW2x2gor9ODEGczTuk/PyVoLnDncxclYoiSIbFo5lQGYpk2gDr
         zRC1HA8z1Fg4+4wmUA5ai5lgwJd/h+KlZwXNVgXU2h+8n8qY8gd1DQ1HwAMagX7dDgPI
         T1viqUgKe17VAqN8u5S+sl3al4TU0HQe5Z83d4TpZFy+psfBvrQqiNrqYbyLn+0sWQd6
         LX5KMFo7lUWzR8vnRENW4cYnnPYBCwyVHZ4MnTcuhP0Qe7u3lP1re9OooCPYRpxn5d6U
         QCX536DSK766BjRoTYpZTPgaUrw4Wkv2iDzTsDu9aTVXGe5vL+/10zjDoWfCUlX0AD55
         mPag==
X-Forwarded-Encrypted: i=1; AJvYcCXqA9knvaVZGi1l4TnE5V+HWReaDh5ev3p3SjFGii3g8aRjKu9AeK/0Vx122I2Aur+4X3Xj5rCD+V6c@vger.kernel.org
X-Gm-Message-State: AOJu0YzC0af3CQ6oNtK4nX1Dl8YIhya/TCW04b7Kjnd9Q67ijrVY4E7j
	3rHcasA3OT5Ww5lsK+jOQESUI2+psU+zq2loNWC8Okt774HcR530cOWniX3l+HLSgVK/mSxLYj+
	GzEtpt0p8H43p1iOLJ0gYYcc4Fro4IUiJHpVmJVDUt4ybAUWFIs9E2v3uycBR/StGxjhJkq+9
X-Gm-Gg: ATEYQzy+SuCuiD/sB+vpYhyxzns7wlv/tUb45ANqctRZla0px7YNcmvB6xtkCDI6Dlt
	gJ94o8SWUXiZvU0HiqAC/vHQdg7SJ4t9wBpaxN/m71U/KhsgmoAw42vF9D69t/XYgpH+r4VSbdx
	bFeamyKPq/YN1jbP9LjRR/0XwFHx3i0z0yfWmJyRIOvsmOKzzsCI/cS3YzMDeKk44i/8SkfwBMh
	NBICawFQ28fGFNcb9EioD3YRaTuwrMjR7/SiCV38fny2EkvH8v+BSzbNv3vwwItBoqxdhhrmDsr
	AGG/SVMP0H359JQ1TOAlf93LOP5EZByEj1HUwuiAfumTztD3wQ6kvvldv9w062BGJXX1/V9ZP7Y
	L1/FVotTUPQTlkk2UzoJG1Xl5c9bJ9g==
X-Received: by 2002:a05:620a:25cc:b0:8c7:1271:f336 with SMTP id af79cd13be357-8cbbf35265emr1688084185a.2.1772450051829;
        Mon, 02 Mar 2026 03:14:11 -0800 (PST)
X-Received: by 2002:a05:620a:25cc:b0:8c7:1271:f336 with SMTP id af79cd13be357-8cbbf35265emr1688080685a.2.1772450051242;
        Mon, 02 Mar 2026 03:14:11 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm422850805e9.7.2026.03.02.03.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:14:10 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 13:14:03 +0200
Subject: [PATCH v2] dt-bindings: interconnect: OSM L3: Add Eliza EPSS L3
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-eliza-bindings-interconnect-epss-l3-v2-1-05b1848b98cc@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPpwpWkC/42Oyw6CMBBFf4V07ZC2GHys/A/DotABxmCLHSAq4
 d8tGPduJjnJvffMLBgDIYtzMouAEzF5F0HvElG1xjUIZCMLLXUutdaAHb0NlOQsuYaB3ICh8s5
 hNQD2zNBloOq9VFKhzS2KuNQHrOm5Wa7Fl3ksb7GyTq+Jlnjw4bW9Mak19zNmfxknBQpqc8xOB
 2lzafDimdPHaLrK3+9pPKJYluUDBcH8GO8AAAA=
X-Change-ID: 20260222-eliza-bindings-interconnect-epss-l3-1f40101ed6de
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=OnD+J3Txy8+h5PHGhwbuMoSIh44riSvoH3it3jU0of0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppXEA4oqplbct07JUcCF8YXpQN3RGDJNKoGd9u
 qKZvUcNlfaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaVxAAAKCRAbX0TJAJUV
 VsxfEACOFICna6hipUPqEf2JBZP3hrGRhYTHBrfKWIPrNo/H8odyyK9B/hY1/8NA2ecRJgfr/JN
 KqjxHUOhC37da2q813Ezn+858ZhwapQXrd8ty3NMjqPvcaxiWhcpE5ucZaupU88XbeivURmJwhP
 OGeNMAyRfdoCAIUgt8sHNeVvvYJqKrkMTGd2HVInieJMG8XlESEkNOrroOfFhnAEahKFzZ2PHsk
 KFparm8meoHzwaLDUxmodjJ8402lrF18QdGDeOVUA0GaGAg0rZCfq42lqYIlMso+REol918QDUM
 03h8xaLeQS4foNI73nn929aTu1T8ddSvSFboSD+8au5VGxJdwTfOrSPGNYfNkUY8urbUvQW1DcJ
 ywKYwirN9i+ftdmi6fc+41q00z2kUpTA3M/en4Fbs2ZYEOPMjPYhEpT01wEQoCchmWrirjq4poo
 5ISVopfUHR/WtozyueSgR/yXDP/rezRgtRd9/YXRmJL5JY3yW2GDYH3VL0ZWEB/+eF2LxUS92pg
 6gYca2f/nThwITK7wOh5Dhm1a020Tu5WsRcTzVF81eoKfnP1ZP35M50IlK+s81KvKTd1SDCKDxd
 If/MBaSP4in1kIld962vh2wAUCAPp32oIhVGJWaahDEt7STvQEHVNW7Ybn4ZKzOnGNU12rQegC9
 RH6UcVN8XIheLKA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: 9fDM4piUL9gNTq_OLxF-PeTGlNQIgG2I
X-Proofpoint-ORIG-GUID: 9fDM4piUL9gNTq_OLxF-PeTGlNQIgG2I
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a57105 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=gZAgmGDqgr9CJ8NO_tEA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5MiBTYWx0ZWRfX7261Mu8KdFGx
 CIqBOBZg24iN6Dtn7u3VavaExXaUA++uYdRqwYQv1j4X5aWAlcp4OOGXR/liMMwSpNURuZeNW4t
 KuAAcvG0sTNDaDKHTR9pVIVaOAaeOszCGXUXqNr470TyrCZSAglgebqbe03zv7NerBy62FAQTrS
 s1XO40YpT8JRizY6SzKLEyVk57mMULpEEFTkOd1yNQ4+lA+IW5K3gUIyqKy4LmcQS0ChrLbC5Vh
 KJssz2ALvc6MArdD4rkysC8WMNrQtAEHb2HYSFd2wXqlXBBkSo64/3uhkYsAEUrQhMxpFYWznhC
 g4f8RqIvj0RlDqf6faSGLnrZRguOl8wq3dZFEu/NR988TaKBm2chDZGoqBIF/HRbkwX6d68L0zy
 iw/eiKgsmM+b722jUgFaH9gVEVfBl1oZmW984nHUv6MnEsfI0YDC9vOYHzfLr92nF4OK19knJnH
 MBpclqkrK4XgSjzgeXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269932-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 596DD1D74EC
X-Rspamd-Action: no action

Eliza, similarly to SM8650, uses EPSS hardware for L3 scaling.
Document it.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Re-worded commit message to reflect compatibility with SM8650
  and replaced the OSM with EPSS, as Krzysztof suggested.
- Link to v1: https://patch.msgid.link/20260223-eliza-bindings-interconnect-epss-l3-v1-1-fa83970d60ae@oss.qualcomm.com
---
 Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index 4b9b98fbe8f2..6182599eb3c1 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -28,6 +28,7 @@ properties:
           - const: qcom,osm-l3
       - items:
           - enum:
+              - qcom,eliza-epss-l3
               - qcom,sa8775p-epss-l3
               - qcom,sc7280-epss-l3
               - qcom,sc8280xp-epss-l3

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260222-eliza-bindings-interconnect-epss-l3-1f40101ed6de

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


