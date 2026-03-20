Return-Path: <devicetree+bounces-278316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BmIHg9ivWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A382DC454
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 825C431543AF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE583C73C6;
	Fri, 20 Mar 2026 14:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UKugyLLF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CH1QYRpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F382A3C65E4
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018170; cv=none; b=b55+bku8bYK1vJCfV9AdLpaZ/y3JrIVXY3W8JgwzlVahq+0FdcBd8r3c034WBmDUfLVoJZaKvS0UXQ/ZJE0jy/ycUScL1vPcS5G1oHm01GK1t4t5OHSJE8byOV8AK8bl11fKqfkAfgjH/Cbv0oj4GpVMMPhfYZNAiqwSOA/Ali4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018170; c=relaxed/simple;
	bh=6jShP5otc7Z/xglFZY5mqaUqDhEckaI1JOm+jwe6kcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qNJim3qhbPaU1OToo8EZU5bkgnZlMm3tWMXT1vb/OpttuXjZHeexFEJftVaaM+yefaUepGk7mvAlpjwimrT6iXm4CNjTzJxS2WVR3h/zAF+TGFWh4cNXTSqpqQEhp61rQRYxl7hyg1sL3yE+d+jBPqL+ROiU7R+jGpvObOKm9dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UKugyLLF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CH1QYRpZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KBsOmN3875956
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xKWL+GAYqNp
	+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=; b=UKugyLLFffJgxwyOQephHKfj6xm
	KIiZroCPWFahqNu4B2fA4ORCuZcHOvzzbnjqBIvCtdCpZ38sYtR6UZ54oQLG2bCa
	CXRJGR+9mZXR9MOaf2KdCfAZOyhVIOQciOxa8jcoRi+QQis3R/S3kvlcgglsH9Dw
	mpRKs8V9su4VTXQL70DgmCwvylbEdzzv83Hh5opuHEXnVB+6vQlhgNrG4FNg6MXt
	Suui3JXHtpeo757+04hlRwiWxDOhBBjyKQuWzIXhBPfoFoES4BewF1fr8kXjJs48
	9n4Rg7oPicfJRlS3TC647055epdYxFM2ZzQoh83I2VgP4ZrejJooujAMyUw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d15s08e48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091ee9f1d8so175414091cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018167; x=1774622967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=CH1QYRpZqeRhZYSbOZPoGwuc+X1yIQhq43IwsyTSfOVXiGopOVc2IYK+Tjvzo1Jk33
         YPX+ExGNveQgSixTWw6i74Rtp3ddYz50npO/wEJwFjCBViMcHgH/2xY7hSCnjusAwxHW
         7UUM8aTAruZAC/Bi1H2qknYW+BGEcGV4NHMyY81UhsFeWbeA0eM1RrdF0WCD9V7+Bhh2
         D2VG0TVO1lfHVtg0QETOzkbWWGt/WSR5m3sv+fC3n61Bo+W8rbYJDruJTCKGYSDLQjB6
         sPbDGkyZtSlIDQBiCTZdbTywo8U8tIRkamthG1DE+OTEEXk2sLfoK0pMeMQ73R27+dSr
         fZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018167; x=1774622967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=nVgcozShW9bXDIMXSx7AtPbXeVgHR4P0jeUhXVWle2hZuenTQ721Si/FXNIIxE49a4
         TJKQf33UoXd7sLEaXhcmagREqIBo0R0coNIxP6PF4GT1rpKQjIHpjIKwlDu4JnwgpM9R
         8gC4OcKutpEq2/TymOfKpX+Y8H9IlbqVm2qE6+zPh/jAg9Bxb4GtXUIKzypsFI4V23uN
         4dw4tJXUrBlKEIdUM0bdghXdWTzTseRD9pcZeuxTVIG1KkudUMJznIBjSxHDLLKW/RB6
         OFdlis/5r5kJv5zJpsP9KQlRJ0GZJJW9htG6Ajek0FfwMRIEpbVy77yiCsJiic9wVZLU
         kbqA==
X-Forwarded-Encrypted: i=1; AJvYcCU1YuSjpMe0VUW2y2lI9M41/Z8dS8e/A2xQX5vEXjnzXhEqr364HXXPWv4Owax+ljXQlInuRCS26Tjw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2J0h43+QYUBDZrwaPenJExAAMe81uA4N+3Amc9ZWqodHUEgWC
	zl55I5/BkFtyd2j+B+M60PomC2Q0FuExzTENFkRW+GCOh5sEB54kpUaP8h6VZ4qSoLrlXCE2o/6
	n/XoRbzwK00hGmrVFdcIS5kw4Ou8vG+N73aTkM5NFJFepHU2cMf9cSGUa1ScdGCqR
X-Gm-Gg: ATEYQzyPIgT1AebOVcd9YaNdSaMCZj4WCugt04SUyAa9IB8LNclQ6vjKnjsvVyU7ae7
	g5i0RdgTXeEC7G+Q8CWqeOrwg2WFdcwy6rOxambc8jglPxwySdUKje6iQw6ZQpwnExzDlA1lUGL
	AZ+k9y4TMuvPdEDKKh4aYDo0I6bKvbnEs+Xhe0hPrX0gmOKnuh5cbNZ0rjkMvgxvYUceBwh8q1h
	EMw1MjIMeftnxtzesCR2NzL46uYuaPjCrXkECqg6ZymeynYvXnVL6LR7klr9NMGp96fVBucqlWr
	MdGOT1NR78jjxHP12VaQodpSg5nn6KbYNh+zPLvgr+msO9/ehKV6lmzxnP2H7X8GVUl/Dqf5bkk
	YaTqvEzBqvB1pf1QoX1q7+WdQr5llHbWLtm5RNAIKNQT+HjTkOZztw3I=
X-Received: by 2002:a05:622a:146:b0:501:51d4:df30 with SMTP id d75a77b69052e-50b245b43e7mr103801491cf.8.1774018167453;
        Fri, 20 Mar 2026 07:49:27 -0700 (PDT)
X-Received: by 2002:a05:622a:146:b0:501:51d4:df30 with SMTP id d75a77b69052e-50b245b43e7mr103801031cf.8.1774018166894;
        Fri, 20 Mar 2026 07:49:26 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:26 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v6 03/13] ASoC: qcom: qdsp6: topology: check widget type before accessing data
Date: Fri, 20 Mar 2026 14:49:08 +0000
Message-ID: <20260320144918.1685838-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 2EjuiEhwTtraitCDteP7YfpCnJl62qAT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX9AKPs4kXhvGd
 J04eqdSihwjnizkqFH6fa09Ukz7uhLoRgQ16GlYdLZgGsDi4rT1e2zWvqAwG0mzZFoaYsPzFAGw
 utIWlMKdA3w7RemBzvPhumLwmVRMeyDe//hvNwmDGpE7BamGZOdrfmy0SfczBhjfZS98CL99r7B
 dfBQLM20aJl3ewUIEng8/IPGXdFz2qHqhp6q11Ne+gBkUQRuBc2IckC9nXWS8VN6DiNZN29gd7d
 0gRRg6BAvaCYVaEzo5bshTXoQ58DI9MJ1HkN8ICnWYR+do0VQTCzqVZocCbExvG44j8j+P8dH3P
 zdP3n5hwlSVpZB5M2iwIXJ2uFvEJdQqvKqelfqaTfS2+qx0j2Br7OvxCMYZv0qNfJtdPk5hkW07
 kH0zqTvC3V0Ud4h7Z0axvCVmV7DF8C56Ej3ZqU85YN9flAmwgzfouT/mS1juJZ094aZFgr2YLGr
 jIbxQQPaGng/ysG4TXg==
X-Proofpoint-GUID: 2EjuiEhwTtraitCDteP7YfpCnJl62qAT
X-Authority-Analysis: v=2.4 cv=KORXzVFo c=1 sm=1 tr=0 ts=69bd5e78 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=5HTw2GpdgXbBP0wXRk4A:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278316-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.972];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E3A382DC454
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Check widget type before accessing the private data, as this could a
virtual widget which is no associated with a dsp graph, container and
module. Accessing witout check could lead to incorrect memory access.

Fixes: 36ad9bf1d93d ("ASoC: qdsp6: audioreach: add topology support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/topology.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/topology.c b/sound/soc/qcom/qdsp6/topology.c
index e732fac9b8ca..1f69fba6de26 100644
--- a/sound/soc/qcom/qdsp6/topology.c
+++ b/sound/soc/qcom/qdsp6/topology.c
@@ -952,9 +952,6 @@ static int audioreach_widget_unload(struct snd_soc_component *scomp,
 	struct audioreach_container *cont;
 	struct audioreach_module *mod;
 
-	mod = dobj->private;
-	cont = mod->container;
-
 	if (w->id == snd_soc_dapm_mixer) {
 		/* virtual widget */
 		struct snd_ar_control *scontrol = dobj->private;
@@ -963,6 +960,11 @@ static int audioreach_widget_unload(struct snd_soc_component *scomp,
 		kfree(scontrol);
 		return 0;
 	}
+	mod = dobj->private;
+	if (!mod)
+		return 0;
+
+	cont = mod->container;
 
 	mutex_lock(&apm->lock);
 	idr_remove(&apm->modules_idr, mod->instance_id);
-- 
2.47.3


