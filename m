Return-Path: <devicetree+bounces-267799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCCNGHh0nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:50:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ABC184F03
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 804FE3093477
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CAC372B5B;
	Tue, 24 Feb 2026 09:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OHYJD680";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xtq8eMQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89F2372B23
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926604; cv=none; b=MNuVvLN73SYbYvUJtV+vPclLGT/BxEkP2HPQGWidqBA8o4r8XdX2gizpzENC31N2NkUxhqgOo5QbMtInTaCAwqXlF/5b+shwD292AocxQdiOahiFPb1H3OfEqY6kDwkuVwyqn2joaYtvXwJsbk7of0CtbudW1eK6NprMpbG8J1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926604; c=relaxed/simple;
	bh=VuWZ7N1lcd+WeGw/pxnXfta7MxEtNGYz5Y+EcUPXYDs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UhycHiaRihCqdpsarJ3gGEiXOQZWi6A5/7AR+N+/bBXPvDFg3f/+TaYHZ9yYUa17z/w6WYIqOfj7JuWm17mdGkPZaefCsc/RTpzOI/esVAr4cdMzqQGAdqk0esuIathBqGAhgbqX6wsmkl/i/idXhbuOi7uujxnMAufCTNXCSSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OHYJD680; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xtq8eMQz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LS3v3123846
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	awIGq61Y2CiCEJlV84BcmHBT/7kHGgeTiuFtR2XNI+U=; b=OHYJD680RRDgQfmz
	bT34/Rdi0tuA+6lb/W4pKqm223WwifleBlX/IAo/iQov3zopEd3qpgsgjIbAhK7p
	D8LSsO1YUzhZIuwZG5ykrb2NzS0mMdZpsPD0vSayKAfLdY1CsuhY8pyLzMQ1/eIL
	DYwveL3g4rxI15AlJGmjhzV04gkhYgllHx04MPGXayXxdLz/Ek/yFa6uys6+p1bx
	TscUmW3WDiuLI0lgWL76C8y7us5wtkzZlFNX1kfF0AyIoje/zWXqztXx3aYZh2wF
	VKzReNLQrQeVXGA17KMYhFTVrmDSml/gV2hTW3pTnRAMfqvSsnAkY1YkzQNIlT9G
	o9AaxA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8tpgj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:49:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c711251ac5so4125716185a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771926599; x=1772531399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awIGq61Y2CiCEJlV84BcmHBT/7kHGgeTiuFtR2XNI+U=;
        b=Xtq8eMQzXVMLNIA3XcLrS62Y7o8KcwWiY0tT4jZxgXArLUc6s2cHcakAksurDsHzdB
         ja5hwMuLDvElJlRlYU2hnMXn/X0JZlGtUDcQezz3gIwoV2dE2os2+GQUqh4q5g9TtT8q
         +A5Ok8Lq8BiUv95+SegrzxfqGKEUyGGHeC4gftW7DS3D4FTorDvCbM6CKVaOelxdhdtI
         nvrN4bv2mmKxnpV89NJodXDAQ8W6n1khOWVUOryMhmhMQEJFkZs5+WlKOw87gJnYKgR+
         zjxKPyznEFSgubNAvke8MF2/tNoYQlCowigExyVxLzy3Ov8lLZJfuaE/qXfBcbnqwdkn
         KuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926599; x=1772531399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=awIGq61Y2CiCEJlV84BcmHBT/7kHGgeTiuFtR2XNI+U=;
        b=RlOL5aaig0k9M60k43yFIq9PZi78JeccOv5kyVux3igHLz9Yby7ztg6e5birazaqi4
         D6u8YeA1nlSjcoyALti9ljPYYhZcUcuhX39+EjLuPSqir2rqO9RtKNWGdR4d0eC30A+n
         Es/OWihs2S72iRjVr/am++c9WCjXYHbn8M9mUwq8OHU4afj+ZppchsPgV5XmuFXzHTAh
         uOI2aofMNhieGai4hM6QWE5sAsPrIBWRLCdUaUkhPZ1bRvoESe9WkWZ2dGCpN0ekca15
         Kg22IJY24TWKBxnow/b6q1foBEO87fFIQpWkKaVeiDZwyQcUAqI74RnUwHr7fHMtZ9rL
         LeEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNamj41kADw82sIa1Ut4lyy19T3nCEKqTfpfTgCZSy8QyMLMhT9c4kq/Cstn+wCrOolsH/pJ+Q4WA9@vger.kernel.org
X-Gm-Message-State: AOJu0YydNcJ1gY1e+udmb/19S043E/UNMUQ3xNUdgU9W/l7KJFR6Ju8k
	7yMV4mchIIRZrJYQAwsU+0eSrlMfzWnle1taFEBS/daaLdvtUSotR2a5ulPIksYedmUZRnBVabG
	wO/taAM27zNTzWhWKHUnXKsYdBlf9MYcIIl3GP6BzNhPu0sWpzp1ov9F7OI418/Sp
X-Gm-Gg: AZuq6aLEugzG5R5CLek5HaMq7QL+sIewZhxQsgv5HJt5SUkBOYZu3/4LKrXT+0MQe69
	r94/JTYnq4JE2vc4Mh+FU9QfICnU8CCwOK9ETm7EDLaEwpZ85+HISBgVq8dXK2uSW84LINvJ9pM
	L/6MkjkYq1aFSF6vRjEPBNN0Y92rK40eVSb6wJ+iNSQHUiRVksq+yazKMiYqzOQ9nPjUf490JFw
	sbsC7jMiREVHD4RJFv/TukBVrac4+Fb91y8T7d6jOQm6N5teZCpEwMlIY3MtCr55UTKxMRNLd/C
	X9ictNP47Cs2bzMFVLX+MgCeogzodnPgroq6lIkTO3t5nd9erjeI6yQz720XuJzYLQaDlODJFOG
	yemqHdsadL+y/+B4VjvKWvnqIhkRuzQ==
X-Received: by 2002:a05:620a:4542:b0:8cb:4c29:66b3 with SMTP id af79cd13be357-8cb8c9cdf25mr1217676185a.15.1771926599017;
        Tue, 24 Feb 2026 01:49:59 -0800 (PST)
X-Received: by 2002:a05:620a:4542:b0:8cb:4c29:66b3 with SMTP id af79cd13be357-8cb8c9cdf25mr1217673185a.15.1771926598218;
        Tue, 24 Feb 2026 01:49:58 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3fdd0sm25912206f8f.19.2026.02.24.01.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:49:57 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:49:46 +0200
Subject: [PATCH v3 2/2] pmdomain: qcom: rpmhpd: Add Eliza RPMh Power
 Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-eliza-pmdomain-v3-2-6e13d3aa70a1@oss.qualcomm.com>
References: <20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com>
In-Reply-To: <20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1852;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=VuWZ7N1lcd+WeGw/pxnXfta7MxEtNGYz5Y+EcUPXYDs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnXRAhwpAZgCug59nAtnYVaYuiV+RHdrDvzxXZ
 3qzkrpoAaSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZ10QAAKCRAbX0TJAJUV
 VtxrD/9781CE3DbaKoJXBV5OlGC8mmlG9yM9TqZeAjA/p+hxNnLvVZNqwLXDZM05SX4b5dmNlOf
 W0T6MyFdVPStOg+61ZqooGqkyd7kiVrBf8IvAh++98Ga9w+MVP7vOHIVcPE3Rq1CPul8lKPPAON
 u6o8QfnnUJWgnaht/pYms/Wk8F3OmC6/hfymcLRwt9/5SJ/KuTmzbMIEawflcxvhlaYR9Ur/xNP
 aDT9pbaUq2U2s059ZgqeLXD0ZHxlBQYwXiPAkTuixxpwBnG9hmpUc0r8tB1TqqDCKfmRoPGUWsV
 189XGbCJ7dqK8f6QACDOp9SFKq3mF+OWE+BwoKWE0srhgKjCbQqsIuglRmEzslpK87gWO6EBCuA
 MkEdemcp9Lg6E5SRkcHz3z9ksrZGdCCBiAfpxi3tbS06hiZfn6Kq+VD2nb1FKNBm1toS/vToDDw
 9Vl7ddSfA3WyrvHM0uK91etI+IxgWR+HFWFFI2DoAQZJ7QOiAXFwT+AZzU/qZfAWgpSJuICPCGF
 6XLMhCfli8qaz1FCsk3KhSe8QUFd7yZkFeaFRr3B0QDldzUbPjaGYZDkuVs2gmEGFd/wWKpYahy
 9hydk5tpX83faQwBfwtqHasL+jdd8WZuvea3PqfL09qrAoywiDUGFuPscReFOhgfkvGfRGPmnKW
 VyWJbA0O4gkSyfg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: Kdj_VAKTFmDfGcYCw--oOTYGTaaI9RFc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MiBTYWx0ZWRfX2IqIy5QwIViB
 qXlFmYmbIFF4DgPe1f53jZajG9XA1mnyh4kRwAWL/SmYHyYWwFCbNEW1CTUGxXBtO+6sTKFmcrm
 vJEMO4raOMriUAZ/tHKfKA7dKYrVqBksn14gy1gV1mBZfN8O9bRGV+n9OdznwVWaugSrb5El0Xp
 olDS7par2qMNpCNmw46GUt7vSQIv+1OkgWgkCDnaD3Y+pKwWRq1WYJ++tveFW7mxiRz1E3f0ea4
 A3JanyqRzjd5VyFIVlNMu8MaWxm9JOXNmuyykbm8kkss5Uqysx0Ad/vK/zX0EVpG7XCTX06Etmn
 n/m/7lUojPojj3TZyhikKQvkSbksFHcWk6jvdgtGtbLtvWgYVJHSBAm9+nQeWzwUmLqbvUBn7ju
 KQf3ZRVtJcrtBDfxol4LJb8KF3p+X0TidWv7sSwFx9bQY4roHw26HAPU7eP/muWl41Fk+QeDPSQ
 iE5LFP8CgtbhOXOsIEw==
X-Proofpoint-GUID: Kdj_VAKTFmDfGcYCw--oOTYGTaaI9RFc
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699d7447 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=5pcsaeFqqz30Xcu1mCMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-267799-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 02ABC184F03
X-Rspamd-Action: no action

Add RPMh Power Domains support for the Eliza platform. The list of power
domains is taken from downstream. Even though the cmd-db does list MMCX
and MXC, they are not used, so they should not be describe.

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 19849703be4a..ef2e08c6b454 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -217,6 +217,27 @@ static struct rpmhpd gmxc = {
 	.res_name = "gmxc.lvl",
 };
 
+/* Eliza RPMH powerdomains */
+static struct rpmhpd *eliza_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_GMXC] = &gmxc,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_NSP] = &nsp,
+	[RPMHPD_NSP2] = &nsp2,
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
@@ -795,6 +816,7 @@ static const struct rpmhpd_desc qcs615_desc = {
 };
 
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,eliza-rpmhpd", .data = &eliza_desc },
 	{ .compatible = "qcom,glymur-rpmhpd", .data = &glymur_desc },
 	{ .compatible = "qcom,kaanapali-rpmhpd", .data = &kaanapali_desc },
 	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },

-- 
2.48.1


