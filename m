Return-Path: <devicetree+bounces-271246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHFBCg6PqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:59:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CC120753F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65913305DD58
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5513DFC65;
	Wed,  4 Mar 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cdnBhTxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8516E3D75B6
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654314; cv=none; b=WVDGlAxJ1My0OwpTqdwj70RBHcvhpvalMfy15XXGBQtnhmz0Jvl1JrIhYXVqWkv3VvVRI1NcPtoOAgrrUfdMChUz/d3VNBy/sBgcyILcHDpo8zKCXcJl1noWcDlbH3T3WkflcPqLTPa5u8/9yaf5OYOr9PPAcVIWZ9p7SfW5Vd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654314; c=relaxed/simple;
	bh=lR1IVDRMJkZXoDslp4/dph1T2GakLoRbrBddRQrqVXs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hjgmiNhLWF+I7yceO46YIKlvc/Cj/1EDJ0Fo45INrBNBRcSkTMzq1b7qJVBSrfE4nALPoxpy0B021ChsYsZB32BVk3QXozbGEcfgGH2O78qTbmYRm3nv22ufMDmwOICfW3Rhbf1HzqNbzfL55hyOsNnjpl98MhFOLFA5Rz8+63A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cdnBhTxP; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8cb420fbb5dso430364985a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654312; x=1773259112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnPc8TBTfWgiuHY5fV7Z5G19bPt1vmYlz98f9MexdKc=;
        b=cdnBhTxPCJBXnwuCRxUefZS95lD/mleI3WbAJWQWAe9GYoccK5AWzhtdYXvxH7bqpz
         L69EXRMPuA8XjVUSV7GpuiCwAP69cgBwnJx27Fok7aoHspSCekeydoficMZZNv7Sllvz
         gC6IdSOvv9JbjNd2Z4xHCJ35gkqkuWSdkCE0t1662eIDz/zqPUaI6oe4e7uSak4u2csA
         TpjKoVqAEcaRMVJ3bv0k3FjeqgOWrV/eHAk5ZHIZGOZ4rrw7wJqXt14Fs4jSGYiMtoBg
         reWbiOZKNNxKdqhfMlFCZg8W1T0+YF1YThWriEU7eaj/kO3FdqZ6qecgQCPP+tMd4I5Y
         cDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654312; x=1773259112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wnPc8TBTfWgiuHY5fV7Z5G19bPt1vmYlz98f9MexdKc=;
        b=s3KZl9/qbsQ37gRMnxbc3zJScajE5PKE+lIxf8zFKLApsd+HBGVQthTLtofNVzOssB
         tFCSpL/pN1rMLmY7oJQpcehYNq556x7GjU5k+nDy3HwnbP7GPxfZTKFh6RUKP8AK2Sdu
         peNIfC2uRfnUCGrIp5BfMpsrROO6EDGXvJcPRDaxD0cUZaXzDmAA+5icvMHcRhCm5H5l
         HAEf9Y9dyPJ4/Fmvuer7MAygRaPq2dTgP9d4v4lFgDmi3U6IfNpjosZ/1SiJeX4vDJ/p
         Yy30tV4W1M+dUBeVY9fbIKFwbGWcw7xJx5lKvM/Zj2NSfsKCaTDbvJE4cWnC4bzu5oxQ
         E4qQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2x+Skyv5haoHuCJWRtTxoBQekY3k8Z11kbt3TH+kvecQyhWiI7nABygVQJBYOIPH8VoBXlwLdQkIa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8qm29LpEbdpDKZ2gqpHrQR3zI9ICkrLaYGB6BdAW7KXPIJz+e
	aAeNvUN8lq8TDyNz9131wGKTKB5T1y2NTXXNdxF7FS2Ul8c5nzdunxkg
X-Gm-Gg: ATEYQzyWW56KvJb+Yt3J6/MldJfrpOQjq9VeKtCEKFupHbAId9m3fntnfHpYEAmwetg
	CWJADMRXFTiHbIROLJhxQx5hf86MpjEmf4mLQBbWpfJlnuRvJj3tnVW3FF54xB5AyapKunES4tJ
	V6iTFUJwsrjNAmXjCgshdoehUoawwy55SDsM9OX88TL/3Y++dqowsoqK1XMltcB3VZIGI1g3y/7
	DcW7Au6hGDNqfcCGyGI5O4NhUolOyyFtNOlP/JIpCVYFEgA/yX5DP71B4Rz5wLHLLysAv6LgMbn
	D8pe1f/0tGEhFnRuc0488WoXovEE9oQuDuqPo3u1IvySgePq8/UrtJtznATr2VVkkYMp2retG8J
	gdn+TCF6m2brvAh3ChdaI96jFeA4vlVmE6DQ1N1LbB2OfLzqY1joR34g4qUgC9P8hJH5dFPGBTr
	k96kodVHaKzmO4rM1kuqmih7TQjQ==
X-Received: by 2002:a05:622a:1647:b0:506:217e:b0e5 with SMTP id d75a77b69052e-508dae11dc3mr45067131cf.0.1772654312337;
        Wed, 04 Mar 2026 11:58:32 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf6534f3sm1678845585a.5.2026.03.04.11.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:58:31 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 04/11] ASoC: dt-bindings: msm8916-digital-codec: Add SDM660 compatible
Date: Wed,  4 Mar 2026 14:58:08 -0500
Message-ID: <20260304195815.52347-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B5CC120753F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271246-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The MSM8916 digital codec is also found on SDM660, typically connected to
the SDM660 internal sound card. Provide a space
for specific compatibles and add the compatible for SDM660.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/sound/qcom,msm8916-wcd-digital-codec.yaml    | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
index a899c4e7c1c9..33bc23b6176a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
@@ -14,7 +14,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,msm8916-wcd-digital-codec
+    oneOf:
+      - items:
+          - enum:
+              - qcom,sdm660-wcd-digital-codec
+          - const: qcom,msm8916-wcd-digital-codec
+
+      - const: qcom,msm8916-wcd-digital-codec
 
   reg:
     maxItems: 1
-- 
2.53.0


