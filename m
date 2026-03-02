Return-Path: <devicetree+bounces-270019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKSsKCuSpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:35:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8391D9E12
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 28005309C020
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0363F23D5;
	Mon,  2 Mar 2026 13:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EuVDjkhn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qgx4MtIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67FC3F23AB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458185; cv=none; b=u0oyamuF2btYTET97Bxd6P6nxhaX6lrcknfb+hxStyvGESOVZk5DQ+rAxgHdtAiufHlQYzBnFemleO2jta1OCVWzDOsliY5UqO8F1+bwwyzrbY72k8v9RQd7cYClfqrFMjW7ZkGawsen3TG+rApQaS2qResSFX9Owhpd/Lpx/pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458185; c=relaxed/simple;
	bh=fi6uaGAmA7DGVwWvrmCtmISOorGGj07N/O3QqrUNVOQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a9ewEINa4BrIw1ip6WXHrpPQTdp72vCMvv2gLn/JAoptZCe5IW6izoQTt/W0krgKt40dZSeHXWVpa9+LK6CnIvZYD0iSuemMUqiQ0UPGbLR050hQb5OcyyIn6Kqkk/97y4+bhHKJiMXC2FWAo3XTfizA52+eeO8mue3jEKgVR88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EuVDjkhn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qgx4MtIQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227qhh8083705
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3q16zfx2mmMwO27Q7GQOWC8LUecL6PAFePZk/OZ8ti4=; b=EuVDjkhnsfk8r12x
	KlYsWA8xBKRzeQfEqGI2eQTTC0o0NYoqBcLSEgfxe0Wx9+jStVK/hY4x1tN4Xwjo
	EYyoK5cTzR4RCeLocliv1ooDuAkyGIcjKi6PU0+PjvcVjL5m23QPTgCj/OG72sQu
	2m0CP3lDAlg8sr+8eoBAdCxpeTdvAXFvbiMwfjQNXfBh2TY6K0mW9xUDyIP1RSal
	uphQK3gwVS44BOi2/fei3MZ4/qudiujhgRGV6ntll/64C6D4G4odqkEq+pSguLMR
	4WsGJGbCLe4/XzFb2oaZArhlASghBPjAJWTJa/OP5Fcp1TwexRMN+FkPmixc9O6K
	eBarDQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmw64agq1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:29:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ca3ef536ddso4306003185a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772458183; x=1773062983; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3q16zfx2mmMwO27Q7GQOWC8LUecL6PAFePZk/OZ8ti4=;
        b=Qgx4MtIQYEY6i8CVkhCPDG+Pr2KTd7AhpmvBERnJ+3+rX31xMoZN7PsN9nDFTCxPyp
         pfV1TB33d+SXpKsf1wqQGTgs16nYR7CcZoA9MgIXtKN7z7cGqsLAc56saH4v0p440QHQ
         TT3QgU+vlnCyYmnSTWW8VaxpUubsoKsmWA+lNrhuz37fhnJANVYEmrxPzTAh3K5kWUJi
         CTRWqVxvEH3LQ8VJCehrsuWa4DWgC6jVCk32A/ZhUP9CHB5Q0o4aFxwxP3mEsk/ztQx2
         7Wa5uw6ArGkXZ1y3q+xhea1vNjQxfvp5zjGzuRCdlNwRrdVsVBlKhvjPHhaxzwh5Tspu
         U+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458183; x=1773062983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3q16zfx2mmMwO27Q7GQOWC8LUecL6PAFePZk/OZ8ti4=;
        b=ZSO3c1hVI8jXnmI2MkxVDyQ85lBQpTLHqy0jHca1v29uvV1a1zym3QWfAQCgwFP0yy
         RW2RFZK9+hqddY/a34ADRruyNIOPZU4ZlA26txRsCXRM62BxgDLs8CzttlQBdHX5Pi9q
         DOx0TEWht669LgoRSX21bDRh0lDG0cd0/87HC8tHeSh++iGhc9FzK0xzY/otZV/xZ8Vy
         Z8rJBQUPF0rU4gkNTl1RXY6NYgNPagMIRjVRsnakLyQVxcu+OUKav8mmNpP9DPgtjmmW
         fqaG2mPDOn+DFwYu6osaN99aA1oIqsnJqCrduHr+DK2vIhPE2lh4pouBFY9z8jdSpr4q
         eiKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXj9Pu5/0AxmWf0PG52I4q7xG2U2CDApF+fKs2EMq6Huf4Uk+nYrgDpSNGnOe4qLvnpNkoj4XMMRB7M@vger.kernel.org
X-Gm-Message-State: AOJu0YwLcegwCfYSW6dQXsydicE7lI5buIq+fHOS6aUGb4ui/4rnX0Cx
	3Uv9J6KARsGJrzbxcnyLGWYgl9WTyZeObW/OC51VXae2+8d1qVZZuySYgWs1PxPrzTeJcdWZBP+
	G/IzVjhRiXQSJA+CPee14xGDdY9JqfLsRe3SjXLOwggiEutDvLv8njCf7G+qcHQEv
X-Gm-Gg: ATEYQzzWoQ2SysHLomjarMGrNsNrdIs3CuLuuLjJ6J2GI142oTnc5jjPMVVnJTYeg+v
	rAwvmM1JVu1GiYQCmH+aI5B0i85uF5Ukp+8CIJUUbk77Z7NXElTKf08RIwN1dbRkZpfMooe1ePg
	RlWbhYVXzx5gVOqj11ebdaoraGmMd6VkrifPD7IYJ9k+wkCQg0ipwpr+63wDBDjyCCrJftievVb
	x3C4udwLWPAbnt+ROlvvamnCVj/haIuMheAGBfPFL0WzorDLKgSpgjJDRpN54e3frPd6iIBQWt4
	K71E8lGpT1jnZbzqEZHhRWnMxg8Ewg0kN8MuaQi6V01povFA8LjAwjsoyBLOa4X8swkHKXyj8Zj
	7WGvRZ7jsUXeK26UwQ3f2pHt4BtfjPQ==
X-Received: by 2002:a05:620a:bd5:b0:8cb:79d3:e925 with SMTP id af79cd13be357-8cbc8e3452emr1645423985a.69.1772458182624;
        Mon, 02 Mar 2026 05:29:42 -0800 (PST)
X-Received: by 2002:a05:620a:bd5:b0:8cb:79d3:e925 with SMTP id af79cd13be357-8cbc8e3452emr1645421185a.69.1772458182007;
        Mon, 02 Mar 2026 05:29:42 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf894sm133471575e9.16.2026.03.02.05.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:29:40 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 15:29:32 +0200
Subject: [PATCH v4 2/2] pmdomain: qcom: rpmhpd: Add Eliza RPMh Power
 Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-eliza-pmdomain-v4-2-e61ae2bac805@oss.qualcomm.com>
References: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
In-Reply-To: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1798;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=fi6uaGAmA7DGVwWvrmCtmISOorGGj07N/O3QqrUNVOQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppZC+NjlEc/Gq4ukFIlWLdFD37vGyEGDXgrKM3
 gjPHBOruk2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaWQvgAKCRAbX0TJAJUV
 VibSD/4hmGCXyP29o7PqJ6x0YPS/ktFXkHcTVNhvyw+1J5MCFnxnW4WzxcVFBZNvWOI0ZsQ9RPe
 y7f6IA/sZSsSQTe5l/o0CMasppM0mUvS4zelZhSI8abTzmnfYed+NONdiR3Wp9aZomHv4sVBYdU
 b5YT4SwyYkPRGW3EMGlkDXjrC3KUvWazh3sA7o+WZkIW1xf5iSsnWIPv52hspNG4JU84U/FV3Cl
 HBfMbgMyr8ZzQzespwnVDJkbr4wtShreYmj49sXa5xg4sVuc9WJNFWH/FEh5i1In4f2Eq/LGn9M
 08kNJpQKoEz36N+KjrExY6ACsQ4JsWTtt0LgNhgzJeDxdiA4+Kg+vufmpZrpoi4sxC/hlGKn4se
 QLikG/1l3eoXIlH4iUIbX8nwA7x4wJwAsDYGVlReGBpJp+crZtHjnFkRV9DOWP+bbIkpHErCTAE
 dA0rAb9snTkutbZYtP6eg/mTMl0c5RkGw/OVoTvzdQb3lC5OMnajQPURZAWcKSbjjX1j34IbXKe
 MyoGHDLIWazuz5DFSipTZs5bnLms08COos3CWxk+phjbPHNAd+GEvN/6aJH3G8amXXH6n9RNb6l
 iyEYHQS7bfIE1fFbrQMxfaMBtANmiICzmYLZRZCjnRO96mlrtAQK1d9C4OaOANlrm/ktnkHhXI2
 vQETPVEM4VeDG0Q==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: DsuHUwssUBYdCZ7FjGF5EJqMkQy4N4hB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMyBTYWx0ZWRfX5kYv1Pjd1lGL
 3juXZXoT2t0bzVODsoQNXW5KCWqf2A2kntAstpGUjmpjnpizRiLQiOiR60iBQ2p//gWbTEhzzx3
 5ufw6antkz6rd7k3jx+CuNX6xHpRLANjfYB0KSb4MZRCah1vcvzVTptLBUWDFYh5+/WCdy/MyFV
 /799MXYWGGTPlDMBk/Qzqpv1ru+fMffCX3GZjnOrCArSc34JY4uFJ0QqKwm2wHLZBF1Xrtftd73
 e37kosZF4ZBasqafm4LsEZkqlVQVbvFDLqSwt5YudJ8YxXsAyiBHaKnvPOmAPDaGuP/U/5Fxdi4
 UcT2XleOVPnJOuBJlC0Xam6GubQ2qsB3e00AvBEPeF2O17/V14PwhgHbiaiKVmMJAxbCYovfxsN
 mooSPN9YbS1gJwsOYAfnhCopKKStKm7K7nt2yx48reqhkNyhe2n4FzvnKDJbDRITEpw7CQThnSJ
 WMPLQhBP0Sn+1UbWFJg==
X-Proofpoint-ORIG-GUID: DsuHUwssUBYdCZ7FjGF5EJqMkQy4N4hB
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=69a590c7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=QNDN7hzWmUzYeR32aaAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-270019-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D8391D9E12
X-Rspamd-Action: no action

Add RPMh Power Domains support for the Eliza platform. The list of power
domains is taken from downstream. Even though the cmd-db does list MMCX
and MXC, they are not used, so they should not be describe.

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 19849703be4a..b0c80e4bd86c 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -217,6 +217,25 @@ static struct rpmhpd gmxc = {
 	.res_name = "gmxc.lvl",
 };
 
+/* Eliza RPMH powerdomains */
+static struct rpmhpd *eliza_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_NSP] = &nsp,
+};
+
+static const struct rpmhpd_desc eliza_desc = {
+	.rpmhpds = eliza_rpmhpds,
+	.num_pds = ARRAY_SIZE(eliza_rpmhpds),
+};
+
 /* Milos RPMH powerdomains */
 static struct rpmhpd *milos_rpmhpds[] = {
 	[RPMHPD_CX] = &cx,
@@ -795,6 +814,7 @@ static const struct rpmhpd_desc qcs615_desc = {
 };
 
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,eliza-rpmhpd", .data = &eliza_desc },
 	{ .compatible = "qcom,glymur-rpmhpd", .data = &glymur_desc },
 	{ .compatible = "qcom,kaanapali-rpmhpd", .data = &kaanapali_desc },
 	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },

-- 
2.48.1


