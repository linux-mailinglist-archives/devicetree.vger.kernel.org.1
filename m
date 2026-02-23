Return-Path: <devicetree+bounces-267501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LmaBA91nGlrHwQAu9opvQ
	(envelope-from <devicetree+bounces-267501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:41:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D3A178E4A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38D6D3125D5B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E5A2F5A12;
	Mon, 23 Feb 2026 15:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TKSa3aKX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jEG3HvYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAABF2F617C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861086; cv=none; b=eOsSfM3y+ToTKCJNi0z8KQ4oaKizcHL+a6rm98LgLlRAR9G0g96mSQ+bzXkdiVt2uw/WtkieQ2eGg8qYs2zpDGZFVzs+78Bx/3g3yfb6l5D8m5/tJvLOb2BbExZ+tdZMEs4AldO7qQoqzAjCVdIJ3TR3djSsRai953lLA1+jEdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861086; c=relaxed/simple;
	bh=pqDmDLXVNOCYyKpZAgUBbveXzNmtcg48cWQJVaIxUco=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=joOk6s+pOsPeA0/sG5fCPgSoHxHa1yyE34gsOfown/fU2zjVxe4qiBzBW+s5d3TdSa6Qrfkrc0+3Cooel3LAhHulSDGYfikAaFepevP9lAqsmUrz6LMGiOugsTjrjXT12QJqqT4XOQ7MBZ61AJDBoDrs5SM38uzCoEtIiGwdZ9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TKSa3aKX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jEG3HvYv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYIst561407
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/BYeDYAHLWYMiE1Qh1azl2pzrXXkbdvy0H5S+ClLuio=; b=TKSa3aKXonG8yWoR
	uT5b2VZLXNm+u8X7bJrpk4xFU5JpW9L9fGWAUZ/6OpNoixLpWA46gcpwNeOqzlSe
	kOTNTxnlWiu0L4QWOUsUA7u7dzT9Y2XLGkAJZDRYox9sWoSCoebAimo6orqxjyo7
	TZmnZPtyyagpJH8ISjzxMSqW7KYwXnRII4zJGeZs4gMeo/IetYjLChT+zHLp5B98
	xWlUjbiIp19frk0RSB3CyT6eFfkStHV9qB9jS/9iMFLtkZhxMOvNiklFIJIubIpD
	OITnrqHHpEt4EjLV1B0Sj1gfV3AxjEAz5MC9qMVkxcku8JC5L2vn+2er23nq+UI2
	FS3vUw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8r8uk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 15:38:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4817f3c8so3840662485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771861081; x=1772465881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BYeDYAHLWYMiE1Qh1azl2pzrXXkbdvy0H5S+ClLuio=;
        b=jEG3HvYvHERvZHMq3Rb2seF9dzu/zx8uuoR8UPNgXDXDYZ0ZehzyVyliyS8pLOHI9A
         fd51cApE6f5b6/6pRfigJGq/oZHDCCJ3ggxGozfi2Y6/GfWSxrfQ8eHQJ4h+d0UeJmRb
         ETxdNjRAZR3vSWvxUbISL85jUPbch4q6AbW9a5/LX8WryYRIw2CRVywk78KBQKt9swVY
         IQzF9ed13mTSIewNoKDtltLEC4dnr7BCw1xsxtn0kTjwRbM+ZBVfeu3o6JtCqs0wVTaL
         WefRyqqO3teVuJl5vGkDftQnCIxT1j0083aw20LmPiqLRTsVEz/+DfMEGBDL1F4Et8Pz
         zARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771861081; x=1772465881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/BYeDYAHLWYMiE1Qh1azl2pzrXXkbdvy0H5S+ClLuio=;
        b=JEEMjW6OBYZGUpekVLzuQ7nGyYaxxS0Vd/ndtxF8PcRNUAZ4LIuiOu73m5RT82d72X
         fHy3QUkZ02TOL+G7qLUWaoY5B7nGxr5I2L9zqmF4QyPj2u8fgLvIVEmix/q1eCm3kqqz
         bATmXWfNUFrw0qLhdPXYW3Mc452CCITmGSugucq7wM6I4keaOSky3La9gqI+TWsA8s3b
         8sJWeBwo5SZGFYgsgMlKOFVP4ynA5Ub5J4PjhuuohQDXSTQRgQ+eru3pO8gpQRM/Lho8
         67sTas1MCHraAkuyyx6K6O9/yoLYlQNHleGmrOVW2ZfIDYt7H+0d7K+X75zARMXQnn/D
         HeBw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ22j+C2+ZvKO5K/dX+XKdGEZnHQxBIXj2cONHWDj0yeBDBcMV8OhxTBZjcz83o1j3ZMe/JUQ8oWwV@vger.kernel.org
X-Gm-Message-State: AOJu0YyGHAbwOASw5yXx+nu1Rrz88iBxq2JdXTCYxFnORMZU8WpAsX3f
	Pk+3CP64zmDH2A3Zo7J+buMCV/7r07sBtbBhBH4EM6b2SDTxO0aGYPGjk5mGwANv5CPbDHfx8Yl
	L4MDC0SOj2EuQI653AorqwoV6hlXVZGWsxFHGVO5s2Dz9IiUbNFYeDe9fuRgvhbIM
X-Gm-Gg: AZuq6aK4G8mlYkGt4H27BNLudzEWoHkJNzwJJnlHmYWYAHXTebwTpkYBmjRAJoVYBWg
	68I5Hurx/CbP+uzBVEtJ1CeaHl53YaMd4wtHinJUYB6eiLxiSHX5LuuXNqgq8SJgp5DzoFr026z
	6uIs/c1sBij9cU9IG0G585VKVHlqLr3ufaLsT50O7UZsLVLLiu8YnZyKxvTZ502qknuGSw93Z9B
	y15rMLKis5mDJwXkEcMirWpT3tE2KzLJcVtTQ6OQ78RvHsPlMuIz1lmqdADAt9MVahR/dX+NQ46
	236t/c9swL5imNQL2MpyXuHo3qeeYz1quDYt6gkYpYIKE6U5Z+bygCSqfapyxeiaNxtRdq8M5WF
	GOsoJZUHQEsVRvfNfh2JZaafAMF24ig==
X-Received: by 2002:a05:620a:f0d:b0:8cb:5c90:dd7a with SMTP id af79cd13be357-8cb8ca134a3mr1065184685a.36.1771861080621;
        Mon, 23 Feb 2026 07:38:00 -0800 (PST)
X-Received: by 2002:a05:620a:f0d:b0:8cb:5c90:dd7a with SMTP id af79cd13be357-8cb8ca134a3mr1065178085a.36.1771861079874;
        Mon, 23 Feb 2026 07:37:59 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c96csm21880679f8f.30.2026.02.23.07.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 07:37:59 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 17:37:45 +0200
Subject: [PATCH RFT v2 3/3] arm64: dts: qcom: glymur-crd: Enable USB
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-dts-qcom-glymur-add-usb-support-v2-3-f4e0f38db21d@oss.qualcomm.com>
References: <20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com>
In-Reply-To: <20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=6925;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=IG2Nd0+L+IH5cDGR9ZwQyLq3u0UmdeUVJvbGDv09BC0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnHRQDkKObWjwM65sQHjjc/aS8PN4JrXBMJgZj
 xoxTVXx+AOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZx0UAAKCRAbX0TJAJUV
 Vq7zD/9bsGjboLd89j+NAAg+7FF+huQO+ATleypqRVpd93RwZ2LIsKRqJYlD2lEGnsjZWtegI3X
 xR9IlciKC0J+P29t1/5R/EAShNmLI9xpY3ScCYZABvliLKBIDL79Ig17mAOD8bgpRwjhcqo/Eny
 p7lO0QJIF/2fqVcG5HQFqNnWG1HGeVXs+tFx/GITQvaH4FVucAt7UigAOX2pZ/2Nt+Sfg0SO/Bq
 /le2n6Z/Z4t5v6FIrcF2mbXrl3GEcz2TPa+D229iVmNcMr5GWUn+a6SHgRnbIfK3yFm/tH+FD9Q
 2xwZUocE2S3Zgj2ZRYmM7wFWleKccy5uV2su7kQ3KhI73CNV9J2LJ0D80Fyu9njeCdoKrKv020J
 joZfmKXaYZGebtPR+pzLrHjiAUmQ+bNjeo6yeTbqFVFxdBPcE44yr4chEJkwxKDJVLAXXiQTcFr
 EJhXrmPXCZ2nZ+Nrp2UfutPP1Q2TKOeFKPBKyiZn/qVnZ5SLIq26AceC/LgcLjEbgGmKu1z5jb/
 VfVgyk/iDWMW5xWlykFjEBL7R3OvPEG9QfwqtOfrGPA/dLbGdjYzVi8TPGPybZNeULEfxr7iFTk
 OxigJ6FHoiFFduZXPQ8IYXQpCYGEpuiZCelfGPXA35McY7n7v5V7OcDIjbThlXKCS3gj0Q3DQuJ
 EjTr2hhwDE6Lyaw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: N60imdbOaFXeqQ1JWlYw7oeq6LjI58co
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699c745a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=IZckZgOlll8TeJU42_cA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEzMyBTYWx0ZWRfX5MS9egsdRhef
 87vspY4YBz7gCt7X9EE+Q02kvhhKHKJKGhxy4xuFMO09PEzXfKRK7Aa6dn9cj4GY50KpK83Y952
 iQcUqgYUIT7g61AI4jJWAm/8qfnzNYi3uC/4n4VaRr2vwf38dCB3sGNgaK5/h2LXqccKCpdPl32
 tRLxJP2Eutce239+HH44MeCMy2TkxhiRi7STHnEWbHiEqydf4STRzdb7KX5mK3La/MXbteLIC8U
 6ZNF53kmlrcExrHf2LurvJiYp2BfeYt4bWhPHULPE/We3oz3WJFney9YA/lFBEYZSuNi95qctx7
 eWiSmZGHpn0avalb125LEOOz1JLCoafwNZOq0TpWYYrYH16f/1g+WqC78XZYouXuashuzHM2VgW
 PfjpBfUBDvad9PNqqfnkXy3iBt2+Fkzt7OpRy+hFU5WvPZLcDbB5lRANNy07ZIhUy0Nb6eOr5WJ
 8NCMhzLNjFNG0EXG7mw==
X-Proofpoint-GUID: N60imdbOaFXeqQ1JWlYw7oeq6LjI58co
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267501-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A1D3A178E4A
X-Rspamd-Action: no action

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
one USB Type-A, and a fingerprint reader connected over USB. Each of these
3 Type-C ports are connected to one of the USB combo PHYs and one of the
M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
via one of the M31 eUSB2 PHYs and one USB3 UNI PHY. The fingerprint reader
is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
eUSB2 to USB 2.0 repeaters, which are either part of SMB2370 PMICs or
dedicated NXP PTN3222.

So enable all needed controllers, PHYs and repeaters, while describing
their supplies. Also describe the PMIC glink graph for Type-C connectors.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 286 ++++++++++++++++++++++++++++++++
 1 file changed, 286 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..02e9520028a4 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -60,6 +60,97 @@ key-volume-up {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,glymur-pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_0_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_0_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@1 {
+			compatible = "usb-c-connector";
+			reg = <1>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in1: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in1: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@2 {
+			compatible = "usb-c-connector";
+			reg = <2>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in2: endpoint {
+						remote-endpoint = <&usb_2_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in2: endpoint {
+						remote-endpoint = <&usb_2_qmpphy_out>;
+					};
+				};
+			};
+		};
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -367,6 +458,48 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c5 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	ptn3222_0: redriver@43 {
+		compatible = "nxp,ptn3222";
+		reg = <0x43>;
+
+		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+
+	ptn3222_1: redriver@4f {
+		compatible = "nxp,ptn3222";
+		reg = <0x4f>;
+
+		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+
+	ptn3222_2: redriver@47 {
+		compatible = "nxp,ptn3222";
+		reg = <0x47>;
+
+		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+};
+
 &pcie3b {
 	vddpe-3v3-supply = <&vreg_nvmesec>;
 
@@ -485,6 +618,21 @@ &pon_resin {
 	status = "okay";
 };
 
+&smb2370_j_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
+&smb2370_k_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
+&smb2370_l_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
 &tlmm {
 	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
 			       <10 2>, /* OOB UART */
@@ -596,3 +744,141 @@ wwan_reg_en: wwan-reg-en-state {
 		bias-disable;
 	};
 };
+
+&usb_0 {
+	status = "okay";
+};
+
+&usb_0_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_0_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_j_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in1>;
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_k_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l1h_e0_0p89>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in1>;
+};
+
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in2>;
+};
+
+&usb_2_hsphy {
+	vdd-supply = <&vreg_l4c_e1_0p72>;
+	vdda12-supply = <&vreg_l4f_e1_1p08>;
+
+	phys = <&smb2370_l_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_2_qmpphy {
+	vdda-phy-supply = <&vreg_l4f_e1_1p08>;
+	vdda-pll-supply = <&vreg_l4c_e1_0p72>;
+	refgen-supply = <&vreg_l1c_e1_0p82>;
+
+	status = "okay";
+};
+
+&usb_2_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in2>;
+};
+
+&usb_hs {
+	status = "okay";
+};
+
+&usb_hs_phy {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_2>;
+
+	status = "okay";
+};
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_0>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_1>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.48.1


