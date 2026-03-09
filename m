Return-Path: <devicetree+bounces-272708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMfJJjdurmnCEAIAu9opvQ
	(envelope-from <devicetree+bounces-272708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:52:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C33F2346B4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F35683019CB7
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD536366831;
	Mon,  9 Mar 2026 06:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mip+dyYr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PqZDGnib"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3DC366553
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039118; cv=none; b=TiNcRHtI2AiCQHdjQrTBFCmgydz8epH1RhHr6xejEYbJjwAYDAM+Nklc5Ef/QXOcnETzEC68JZH5uaEq0+ImJdWCuMCsguL0bTDvDGObV9yfyps+nGG2SFKl6iiq8SMdopBkqaLqU1LW8nj9aoVddSByTwscSSlJS2gbqI9DSlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039118; c=relaxed/simple;
	bh=iafQmWDeFIqwxoTztlKqMCFwj+DaAdYsFKAlvo4MX7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gRsG6eYeGnrwMIbKmZ6T8J/9w4372z8wdLUM57PwfiMn46tsygx9cYfn0lwz1PJdueLADVZhT5JipMIywu103z4J+dbv4RZGplGFaP7NuNmvUJC5LUx51xH/spu/vpEQ6YsVqy2GKrae0gTT13WFzNQMNU1Ow2cghBdnwx09SBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mip+dyYr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PqZDGnib; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628N67Qn3477078
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lh8JDFjF3Cp
	/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=; b=Mip+dyYrfP6k57L77mLOfimZZA+
	8Vs9P4O2J8G/5HAaihReWYlnb+3pPr4Me0+Cnm8twNACJgatK0SGH6UnSooAFc4D
	Hx3P5NzBD0Z2PyeXc5VwStbwwWAXFvJVMdvJ2VzwdYZTnNYTI5IUXroOPSLJHBEr
	bJ0HOC7FSoE9EwW3C2aSvZo2xq48coRE95U9Pim1RdCkLbovcAFR7vUUdvdHvaiz
	jYvKpygL44yL1ee402ofLVf8nKIwfudPmP2lazmyMMLHRuE9Kiycd7H3HH5gnRgH
	zLqwhV7N8ptmM9b3mFu8cNr5aeR0BOgIx1zwhtoMC12OsnB2mQulwikKQrw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcd8c4cp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506549eb4b7so808902121cf.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039116; x=1773643916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=PqZDGnibcShOo2/L8bcLzqyIifiuEJMRJk13ETrecbWuuS2vIPh9JihxrqyQCcnIfD
         qNgAhzG8lb4h6zDFXwHHfWS8M377jAYyfGWOF5Ifq7ehnby5Mqd5O9HoOXGx4fLcJM9N
         oiRqYeEMEfIEcuipz3ToLiH3q/zs5vTXtf65zNZrSx+zOJSbPxyUhxjyBSFL1p9akEzF
         hJmQSrmBMw3b//ZJpRUbiska1oI67svZ1sNXYD0KR3bOrC0lPEKkuRa48P0l6OJWc6+o
         WmkyZ7WwWeegn4vd5SiHvCvQJcaSrIbTJ1QIDl/6d7/+a24HohXYQkGAHqal9SqV53Ec
         +RPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039116; x=1773643916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=cNv3llvjAStjY/DmIyv5cqtGJ39+Xm9XOPfJUHNXKHipGgDyl3QZKcH96KlCrJISmZ
         Xpz+JlIV9BZC+3qJVxfyM1CxgUVWGo3fnZtPzi8q5SLoqB43/W20cLIECBwfgOc0/as8
         2vOKpY7fm271UsQlQ0SvrT6GQZyndxsQeIOOtUHgtz2pU7eZgHGzDIPFBv4nzmG4VVSR
         1GtEchO84OxsCHRzh6ozzZgIVStNc8QvsoLBMU9RU7QRm1YDf+nRZuPFcN0PMseHwkzk
         RrwU7XC8lmtuaeXZKyryWdVOylOBDtI7QqrfWhbm4h8y0niLvL/yiUtTSP3y0ov+3d7g
         hrAw==
X-Forwarded-Encrypted: i=1; AJvYcCUjMju0V1neBUkn7KdcmWN5f6pPnGkOBJAQNWs3Wn7U6CUhzpcVgZTV8ga1JC6rOQXpS5QVVz1Vo4UF@vger.kernel.org
X-Gm-Message-State: AOJu0YzwgCGpL/iTl7O5LITX4K9gp1WxJ4mSDVhGIKh3rkgySS+EmA8u
	eaIeUCYhCGzLRZ5nFml0EZPpCcRbtSWmln2nGCJb0bKtnPVWaXzKpH2Y9p855rSXbnFlMbOyJ5l
	lGYiXBt/8t++xafJ1e6UR15klo9ueK4faxeLTsCG7b2BhW/yfByp9lZtY9XZw55VG
X-Gm-Gg: ATEYQzyiJsa47NyIEVqTQhRyiBxiXSWnaJuHDsbR3rwes8YF99WAr/7ruAgYmp1/btD
	j+7WvrNF0vX3qCIWH6mhuegZdO5iLZKT4HDwgmUtu7i2W9dGV3YLordE9gUZY8dht/ml+H9Yn+8
	haxpqaLjOuG0DntEcojWcxQFnfAG3/q1eNeKTBhJzn5R/gpQtOIo8XZ65z1WtBcuWel0kG2Bhoo
	dy0Iylerf19J5kdD2eAIUEOVeKTGNp8rSyus5GiM0WZO278K+V2sM8nPw6UxvNFQfnpljBxJ1hm
	NcL63IsEmKLYXmCWY7dEycSmvtbjevNDMfjyb1esNmbgaxnmbbQ8qOWOlSNhMpKk+/tHsY5pxlH
	dkBXwBL4jemU+6bpRBr5i8wR/8Uv8/iFJTC4VKjGaX0a3lJwgu/chXjM=
X-Received: by 2002:a05:620a:1375:b0:8cd:79aa:693a with SMTP id af79cd13be357-8cd79aa73a3mr572510885a.67.1773039115798;
        Sun, 08 Mar 2026 23:51:55 -0700 (PDT)
X-Received: by 2002:a05:620a:1375:b0:8cd:79aa:693a with SMTP id af79cd13be357-8cd79aa73a3mr572509285a.67.1773039115331;
        Sun, 08 Mar 2026 23:51:55 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:54 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 10/13] ASoC: qcom: qdapm-lpass-dai: correct the error message
Date: Mon,  9 Mar 2026 06:51:34 +0000
Message-ID: <20260309065137.949053-11-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: b_6OJOlKTgE0HTakPnP9W6hzMfN4fpbr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfX5JHrtTISzP4h
 9Mq+Hql+tnHwEhJKGImU/YhPB5ITsIcw7T8gASvsUWHWb23Bo2bPCWvpunFQe8H/6ggoKe30ZV6
 I9te5OZaOB7ixof2YIqO6NGD+IU0VDi5N4tk6NG7lJoMZigOqaLdzIrEMjbppeUdKhI4meuAQG1
 1Y+CGvtC5m/dsh1ZRQp/nidw0x35osU+4Qi9Why991UxHceZKXvOgjwps5KRHAJSMHYcYi7dUl/
 QkgQ3BK/lh+vpEMs0biVn3RGgF3KZ//zLuTRBmRFQiITRCTsifVtFnRxK3QdegiI49VbDj6TXDw
 KsIYBU2BU0aRvedq7rlU5tNYkvQz5KFxuYcGSdnifPnWGVFZUF5VhlSBic6A5pYj2O7R6g9+hlR
 YtFeIZp4c2K2IikuYIIm0m6Fe7flHJ+On2U5Ja62UPqZ77aXwYHHB5XOPY2nIGVPWQLeEP8xhgw
 42Rj6T/j+muiY4WgY6w==
X-Authority-Analysis: v=2.4 cv=O/w0fR9W c=1 sm=1 tr=0 ts=69ae6e0c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=QkacBUY9L2qTTJrEq-kA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: b_6OJOlKTgE0HTakPnP9W6hzMfN4fpbr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090061
X-Rspamd-Queue-Id: 3C33F2346B4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272708-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Fix the error message to reflect the actual graph stop error
instead of graph close error.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index f68d4b4974f3..472b2114c81e 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -150,7 +150,7 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
 		rc = q6apm_graph_stop(dai_data->graph[dai->id]);
 		dai_data->is_port_started[dai->id] = false;
 		if (rc < 0)
-			dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
+			dev_err(dai->dev, "failed to stop APM port (%d)\n", rc);
 	}
 
 	if (dai_data->graph[dai->id]) {
-- 
2.47.3


