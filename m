Return-Path: <devicetree+bounces-271909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKeIBlOUqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:46:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 813A721D4D1
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C8C33049469
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6999733C19C;
	Fri,  6 Mar 2026 08:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="flBusRCX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BMuB7CBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1843793DA
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 08:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786703; cv=none; b=NhYI6n3SXEB7cllrpXdEc0Rb67lrCf6wXf7+w/eyPqUIYH71bGllW9W550eA6c66/T1uE7N7UkVQpR28uIv7drc/C2tblKtcUcXYUb7qMTJwqy5GjLIqLKGwt2JjwO1CpUgfFgZyCHwHr1IztZQC9qRY2tbw7S3qSBlFvRN6hv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786703; c=relaxed/simple;
	bh=gfxLWwfF2AKQXalU+rumQ0ieO0pXnHY/iN5+ExVE2gI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bmAS+9kQkGkX3lZUTOrVi6pkQJ8iF4ALv6b+CsRiR3xUPQ8CpJYHoVe0/7ok+YAuyw0xi+7Cwfp8x4Z5K8N62EvkvhdBmbHKcDbRqc1j6cds8ss7WSNQpro/OCjnFl/GcoWF9XX6Oqsmi+OvstsERtLqfM+8AaVic9BRhMu8bGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=flBusRCX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BMuB7CBc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aVKo1087386
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 08:45:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=; b=flBusRCXaubdkzuf
	YFCDZd7FqpCb8R6DAF4UCJAI8cGT6MbMUT5HH7HCtXpdUl/i7zNqIIxLa5Ohd63t
	lxXrHf/3+wcnjqIUiD4C4nfZDyEcH7zTw6t4Et11mT4WmZznQ+LDxNIAQvkcykcs
	5GUgNzeguqZqg+ZxrBHGsmEgOHQ9OeM+kpPWsOc8XtdAFv5yLh1J3HEYV2PO/2lO
	x57wLtYO4IB0fklagThJmpDeSp9aPhx1cyNoVVeyXo+Yq1FmM+eLjz+0hqEc7wcp
	6TN9eAhydk3J5+T0LqvtBWOrYqOgS04WCjetd1BKXBm0G0zklcIwZQiA/Tu9tMsY
	KXZbhw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqfg6ac5m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 08:45:01 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824af3c6c0cso3891833b3a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 00:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772786700; x=1773391500; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=;
        b=BMuB7CBc6NvI78fLI58flXqwiHI3ZuQlEbHh19j5+lSIe90mBBtpWEqU2kmhcnUs0/
         +H6ko8N2L4UI1iqi7KlhmstEqKaWNRNxRubY5E3ZGtQO56hc5v64v2H+lpD+abvyMWQ1
         SeZKY3uYob0YkMj8N6ZQuclLC4y+9FyktPMbuDt488X+5VCfKracVI1+BuM/hw6cUVvu
         Wu+m2ixHu2rqm8IeDUViwp3FpaV04RSOKbJ7dr5BnbQAJbctGWtLRSpt09l451kTzu1E
         waemPtAI8P052EAxUJSuufcMikVYIZHIC1C+8xyFK6b93pT2wagMVTbaHVvlUkhpPuYj
         CZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772786700; x=1773391500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=;
        b=P/d/lnNwHxG+hcDDZ9f8mrdvtWASnPRN1fTKd0NrGgi0XKLcoimV9ArV5caoqFMz5p
         cZmXSzhzQbwcTd6hY7sRxRe97Uw2PS5rKUOs/Mr4Rh8RllFmhgK5nIiptX8trAiz0nuV
         dbXzIuOugOHNBw2DJfNbIkuMCCLQfxLdW8fL3Un8uM7dnQvtte8ZayNltmKss5aShUtO
         U5MdWmzH031bzoSCgJU/KL+5NopMfyvm7ETdVGr9Imrn43NW4j++nkcTb95HpTYk/uPd
         Dcdgn+ixUJHLFIiJZMTsjsQX7tPjuqUmWr8kLTR92HoMLNFLifBHgJXUuS7DkbBClYG5
         VNFw==
X-Forwarded-Encrypted: i=1; AJvYcCUTsHoMenu6bMN7K7d97aG/u+++SMcz4HtnLMZPcJSM5+nMO+N7Ko3KefcsqDiiWRAeDnUuIUtIeU/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwIrsOLE/xJzpmFs5DQU97wz1rhxIzWzdBsmrF1wSnU+quZM8my
	IGerXS5c5Vze6lsFus+p06T25WAuG53UuAyXRsbDnwM6I3fayScq1IGX7Gb5NwGPyRolOJOKuqr
	ivek9CL87QNIsDVMdpYmGxTM9kO3e8pOw1p8KVZT+2veA+cHw8hp9snNZ0w1om7ul
X-Gm-Gg: ATEYQzxnXAQtbHbaoufkNWEK0hNcHWkrDz2FZ1b/V/lceKhRfjQDdRlXriB4M+xf0hW
	M0Zt2Lil1cl9cMaAo2RVMoERYQAIKVoohVLBPgfiLY+4FHOzyKmzn6936/EYU77lKgn5vEA6O5U
	eJe2wW7rrHLT5X7SjexWhORSmDBqw5YVI3V1pt5ltBI2bG13r0hNm+2b8saYhWFiL4gXMBt1YJt
	H4XtJE7Khd/6CAOulyHywY2zhD1vJXlFBXaGvAhSquae3U30Hj14ynEfLzvd7VCjRy33UOK5zDm
	Wu0U/+rJaXWFP36Pz6euowm3KBaktp+ci/JQR3LPEsLKkgYEQGDJfv6hwu4poiDzGkVIFzfNZXI
	qwpFjXBr14JkuPO29ZNo7eCiffeKlrEhceF8mGqJ6Cs8divXYRHdRiqtf4Zy38E4R8eq0YmR4RT
	9wImgjok8GlcwbNPP2mbgI
X-Received: by 2002:a05:6a00:882:b0:827:3b1b:43e5 with SMTP id d2e1a72fcca58-829a2f8730dmr1378887b3a.47.1772786700491;
        Fri, 06 Mar 2026 00:45:00 -0800 (PST)
X-Received: by 2002:a05:6a00:882:b0:827:3b1b:43e5 with SMTP id d2e1a72fcca58-829a2f8730dmr1378865b3a.47.1772786699989;
        Fri, 06 Mar 2026 00:44:59 -0800 (PST)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4636c74sm1393573b3a.12.2026.03.06.00.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 00:44:59 -0800 (PST)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Date: Fri, 06 Mar 2026 16:44:33 +0800
Subject: [PATCH v2 5/5] arm64: dts: qcom: purwa-iot-som: enable video
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-enable_iris_on_purwa-v2-5-75fa80a0a9e3@oss.qualcomm.com>
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
In-Reply-To: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772786674; l=797;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=gfxLWwfF2AKQXalU+rumQ0ieO0pXnHY/iN5+ExVE2gI=;
 b=EOCPkEqUInknPuurBU3VyQhExWBBywQj+UXX73k6XSEU8sGiFXxw/WIx7cA+l0OlOz/iy7h8k
 dgCqhPE3mPZCC+MF+Lm+731xxjiFonGA/vc/UiYJNOInCasKJ4WgWGP
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-GUID: sef5JTQ_86TIWmoiovjDOHZt9PreZC1t
X-Proofpoint-ORIG-GUID: sef5JTQ_86TIWmoiovjDOHZt9PreZC1t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4MiBTYWx0ZWRfXxR1rNRhncSFI
 UMT2lhkAlJR/v4dhjO4/Glfp6p4bEHtITKhgzM23XZYsQz8F3zwVLtkbSF3mSz7d32RchOAVvKA
 ijAyIW4+KA7SoiETPtx+onTkYrRI3EPBmNQdNdzpI3cpCs/IU+am2LFd4DoW0xHanfb8o66Zh3r
 GFuGScDlPN26MGE8hY4VMbuo1RXq5JzdfshbFAql0vOXh7MmVD5kjJUXY68up2GIG0Vx61eHD+R
 /p81JZVXIKtqgzKhhIesue6BApArwwrxjLknHiYD2nb7Npcm9JP3omEJS0aI8IN+qq3xk6X1xIb
 r7HFIgvcU5z3/Ao3402P5X8zEbf2W84oyNsMM13VxXDogjO4aOc+pi7+HidX2MPrYUZ49dJN+Gh
 jCCy9J6gyUIS28Nws7xi3v7W55dSqDECgfEIpvuk+EYnIMxLqsZuqEmHlJo9W16rbax5nujvPXV
 XVRn9i4pmt8a8dlg18g==
X-Authority-Analysis: v=2.4 cv=XKg9iAhE c=1 sm=1 tr=0 ts=69aa940d cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=lIq5CcVmxYL3PNKvYLcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060082
X-Rspamd-Queue-Id: 813A721D4D1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-271909-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable video nodes on the purwa-iot-som board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index fb90beb1096f665dab834737b6f4115f56c72977..549fbfa3273270d287bb447b45a7d2f58fa15a47 100644
--- a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -389,6 +389,10 @@ &gpu_zap_shader {
 	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
+&iris {
+	status = "okay";
+};
+
 &pcie3 {
 	pinctrl-0 = <&pcie3_default>;
 	pinctrl-names = "default";

-- 
2.43.0


