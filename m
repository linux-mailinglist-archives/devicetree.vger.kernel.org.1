Return-Path: <devicetree+bounces-273248-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAabNIiSr2kragIAu9opvQ
	(envelope-from <devicetree+bounces-273248-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:39:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37670244E88
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8760E3190A7E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7303BA239;
	Tue, 10 Mar 2026 03:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MRUdaScD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ul0DReJN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CBC3B8D59
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113818; cv=none; b=RGMSK/9a5nltByRLX3qZY++nvBoWDwzoDzgBQOl4/czxv8LJzO+tr8drG1fhKNF4kEkjjSIC8MvzSRJ+fV5w3ZUng5o+f1vTTh7zmBciYDwo+9j8M84YsV6blqpkGQPLesFm/0aLNEyEnXq0M7dwvJQJI4z+C52jOPSzfJTleMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113818; c=relaxed/simple;
	bh=TbZHaA5vOn1udlECRr5ebxVlfa8fzityrbwOFQl8KJE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hvwKHIONhEokm6xJbojDo0/myHQh7iFZ8JWwJ+wXlEPoGozNyXrE+nJhWYnAM5BNrZESZttT47qH2NwWzmB9z+mWlOUmwjNO0C6OrK2yzL9XtDlaZqsZJrMlR9wH2Ozw/6u7D3KT4PwjtNJE9m+WAKxBFBeJgDXDlE+GHttiRy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MRUdaScD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ul0DReJN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2Egso3087351
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bP04qDOHi3y
	ZSiapxHxzYhZg7ajf2prSRAxjflLSrgM=; b=MRUdaScDWaToasLA2a8qIBEZEb0
	T3dmSarh/Qab9LQTkhUj8dn1f8UZKEUnFL5pthZSLErFtgzLtq+4B9tHll9IObwJ
	ymoodQnMhUo3owG0fUBJftcLlGUcaeczgX6w8Xn7yqDemQ9ORWf1jS4jQn63LlMZ
	t1qMnO1/8DWAdiuKYEF14UzbVcRTWtV4SjwcCXF6KBHhA4Y0sJ5HWdipULZzq4E3
	roMbx5JEGdCmQR0uFTXKBzBxprCaJu1an/E9qeUDMiBXowslkkvIiFWaKcdQS0g7
	T++acx3u/LPIgk3r6k7WRPfKeaxonszNOb36dc+Z8Zs6ek20/WVACh9it/A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy82ke4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:36:56 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c739120475fso2921111a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773113816; x=1773718616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bP04qDOHi3yZSiapxHxzYhZg7ajf2prSRAxjflLSrgM=;
        b=Ul0DReJNuU29vZh5L01jJPgdIUav+vhNgyGVJyBbFjGZxcHb2z+7RywQtvHTqxcA8m
         swgKMUzeiyHSK6ZK5srYqMN9nrjWe2lubwj5+egxYZHDWDVDMAcHOLDjfRYW+xk7bcsR
         UvgjT8nludYWGQUcYuIGdP7+n8qoh4hxQogqnkT7lwgc2ISHV3GyPbHLklVIy/l5T0Oq
         kCAd3FzA7TSyXIcU96VkiWgvHlah+zF2+0GrwYdI6D2rLy0pA9UBNMDc9/f08mGJad83
         KsB37My8qvs/UKpKqQiyMGPK7BxceFN0MwsUcVP4d+JJbCUyQhP9Tra3R/pnaON/nzF5
         1wDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773113816; x=1773718616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bP04qDOHi3yZSiapxHxzYhZg7ajf2prSRAxjflLSrgM=;
        b=U8ahFckOjbTQIGuZi6GNG2XsnW1RO1L8fkMKECMoA91WV0nL+RjfWRkKu6GV7E7yh/
         Tny3114yKOvaju5jGL4CEUquUNWDLOWLD5S2EP5Y6pqt5E2XyzftFpeWy1Mns1nNwJob
         iEpXN8A3/yGNCFfsSy3kw+sgmlo2jmRf6rHGsChMy0qUQDwCWwiODKHbEe+FUoDubCFo
         trXNfD+WDQ2l3q6RDUCg+Viy5zlrckmNwmQAtomhwOefRq1SzkHEEt+rtIbHnFdznMZi
         P7V55UEcVlcD/jj6LDppsFj/T8Pho8QCM2CblX54iRB6d5SBTqbtLa0RiccDuiLsOnG+
         nQUw==
X-Forwarded-Encrypted: i=1; AJvYcCXOCgn11uBnTwNAI9UY4R9mnh5BnWdZk0IEJgryg8iqXhrNNcsAAhqA3PxzED63qtNId9Oz+VFjgvKO@vger.kernel.org
X-Gm-Message-State: AOJu0YwsmwOJnGLDCMgNHWH7UNsZhNis48Lb3tBZV1pnCb+7ArUiGPuY
	eoc1HRp79cirngPVaqEPCt9uBeJQPv50qjzvzXgYOEd/uaTVp5NpPRejnsmjVDWMD9P8vidcPKL
	lkGI3qjqNSdZSUOeLdsw2JDCWvJKVoqcmouCN300w3c/EzXjuX0d7yS1m/O1dqw/T
X-Gm-Gg: ATEYQzzhQb1/UaSLG1AsSQRcc6LjfPYvz6cb6zCmKOguPvWfY3W1W/z2I1YT8UEtE/O
	0o5AOQw5cms4PaMe1lVV1nbZcRWhdrD4c7Ie/XbvBATOIEKPyWQfalo+nz0lp+95VHdroXdAIaw
	/D5cbADveVA6HKKR7+IkC+G1h6SywfGciyNk0GdGXgla/y5Ha+tqJriIOt4iANXfq6ZfHmRAO+m
	RRzqwJZxoC6Xl+0TtEaa2W5X6FRiRX30r2hnA+3toh4Nm+PSIoZlf82Nt5MlxYFZ2Z2EZ4EVSKq
	PV1RBB4JyCKtzZ6X8dVm+1W5A9bj1GLxgNtHHiffr2uev7zitHySjLjgK+0kd0GaDrNM3rsA/N3
	+IH41h7xRmaszuwxsh4d98rG3TPrU6+i7RqBGbubmfIw3PZlPxhYR0jAa2QwRGCMEVgVPommMwq
	Tzpl+aG8LGzlOSjxQZP7Cr6R/ciSMG4HhC3DWs
X-Received: by 2002:a05:6a20:c786:b0:398:a216:2425 with SMTP id adf61e73a8af0-398a2163a0dmr3300660637.65.1773113815906;
        Mon, 09 Mar 2026 20:36:55 -0700 (PDT)
X-Received: by 2002:a05:6a20:c786:b0:398:a216:2425 with SMTP id adf61e73a8af0-398a2163a0dmr3300625637.65.1773113815445;
        Mon, 09 Mar 2026 20:36:55 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e182d72sm10272923a12.25.2026.03.09.20.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:36:55 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V4 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
Date: Tue, 10 Mar 2026 09:06:17 +0530
Message-Id: <20260310033617.3108675-6-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
References: <20260310033617.3108675-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af91d8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=ePUXPMwdJMzpUIYWY5YA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: FmLKAk2n40KU0jmbGTSBQw48w9L2sZBx
X-Proofpoint-ORIG-GUID: FmLKAk2n40KU0jmbGTSBQw48w9L2sZBx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNSBTYWx0ZWRfXzHAUwPrbZmbA
 lTjLX1mBII8mbom2sVx3miYc++DpxQGEhj3ugY3wg0RtMsDvCYx53vUBOr2o2kTpC/uFoDQ3Guw
 tl/tt6lIQawAfsXJHc5Nnhwrgv3/QZWbBxcj+Y04IvtCrRaeJPr7FCNwvn+/oV1XeBUDaCvvFde
 GIPSNr79ZtOnFTNaUsAYfWyEskU26JmHgPsAiVqqmF4nLM0+VZBByRGUi6bgGq6hSjlSmldJqMW
 ToN9/KbemINGPDXHChnWzuzOTdUM9RgMRrFE1yk9SVC3/yjvlwUkpfF+tnW2dVAhsAGJDf8j008
 y4Y+JXDi45NVhB1wiogvffRtPg9RCdUEqNWB//ZTdv04jhIpLLmdpg6sHOV6FWc5it2+cJAqrLW
 Zz29b5ruSrSRL3UFIDeKPOvwcsVBDXEnbncbLreZUxErzDNA2/zXQDnBztyP1Y+UQlIcmDKJzuU
 iAIDOb3GONf8yMea16Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100025
X-Rspamd-Queue-Id: 37670244E88
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273248-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable ADSP and CDSP on Glymur CRD board.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..6b7f91a3a968 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -485,6 +485,20 @@ &pon_resin {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/glymur/adsp.mbn",
+			"qcom/glymur/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/glymur/cdsp.mbn",
+			"qcom/glymur/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
 			       <10 2>, /* OOB UART */
-- 
2.34.1


