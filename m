Return-Path: <devicetree+bounces-273167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC6ME9Rjr2mHWwIAu9opvQ
	(envelope-from <devicetree+bounces-273167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D45242FA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A70FF3030757
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5971E1FAC42;
	Tue, 10 Mar 2026 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SHHU2RzS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E4F1DE2D8
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102023; cv=none; b=s/S//LmpcLKthS/IeO/Xz63el2nT1KyY4Z/DEVVGdpuLBzdNEdEG8xqIBCycOsg4s7K6cLchoyltzVOUkf9oc2+ppPVOd0Qa3NxhWpYCmixxlapUBIGvD9BTJ+ULV91qJXiEB3+RcAZ5R5zS2GxxwwLv1nH5XN90bXDhPOBQNuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102023; c=relaxed/simple;
	bh=YKU/DnmNIxKk/G4FaBPJrYaaIFx5k+4NkZwdBNpIKdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mHVYW4rVv0rT7FRH+gTjM387YTQ6Ks8eFb1YLFLvBypEe3a5Uyl3u4sOFEQuXCrcvEtL894U5g/BbUN/3rcFdGx38ypu9/qAs5xZaf9JxqUVOj7iyMO9R9QYgANhFFxTa7gyy0TG+QstGRPpF7R2OAfeNeafdIEo99RI56aamH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SHHU2RzS; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8c70b5594f4so1245380185a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102020; x=1773706820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fMK0diFp+y5MtkQk4eP+T+xRtrAK1MN5VxTGJH3Ujrk=;
        b=SHHU2RzSC2Mu6YlbBUcacrRXuPhA3OuWqD91DYfVg6Vt/E7rmzH2ScCNRSkM5Gi9p7
         26Kq7akmT02jkDG4ZOj4ECsc3OExDNHLFVpVPUnsV33O852xJwXuPLAfWvNFbcXLqXJS
         +slJlNnRvRVO29l+Xc/k2fClgge/Z5d1ZiOa3s5euFwZCTi2OQl2nMz/wb+9gT5YbfA3
         S65C9MUNrLmN49sfhEGz37cQkQpFXeKD4ZPHFej1+45r6K+wBSPQmAfMiYm/yamOgXZi
         fPe5rlx1A6I+NWpvrFo5b/4rRKTAFfC1Rhcu7W8zh9pvM/1EgWIpCfHSx8CqQzDlzqrs
         NE+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102020; x=1773706820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fMK0diFp+y5MtkQk4eP+T+xRtrAK1MN5VxTGJH3Ujrk=;
        b=Fmb1Vn9y5kNdBLfzNd8kpnvFdI012OAQtEXprUylM441rwKpvDV+hFvCFqzNxVyTcX
         fmyfc5Bw04ePjX1eD+rMXbB/tFfAee/qBjhZWLQlhMhJQXWhwZ4vHEE5vuLVQh0C4/V3
         snjvkWqzZ8aFon5gTvveSr8pao1DdMFuVzzYMThVMEVcbVhjg7f6gcRCOugMnhLwPfd+
         diBa3EuBW5leUtMwX3oR/4AHKrmjU/yv+Xux0AksuLE9GnAcTdYsAHQwKGfwd/0uOwoO
         O0ljPQaUgTXyWzldnMWCwD/alW+H8BOfnHvEuvHeiLdAf6Np4YxW+P/fUcfXyM3TCjt6
         fN6w==
X-Forwarded-Encrypted: i=1; AJvYcCUDbaG1Uthe8TxG9vr1GwBFuw07fZouo+ETM+dUtvD22HCW+kLnfvtVTqIXNpP27GSEITfdptOGKwFj@vger.kernel.org
X-Gm-Message-State: AOJu0YwpqTMGEnplbHvhXaE1Z+LMO2xIVviUNAYLFLXm/zQUOi8H/8EQ
	l2ABSoOKr3MR+gRvOLCwNBj9+bJCXtX9pZ+Bq+0yaWSCYEJXPN617kLH
X-Gm-Gg: ATEYQzxXaUA8Fi2+TeANOsYCmbudnRXQ9BftdVfkwzQMXY0YcaLRKBoOs+Yl7HXK6V3
	y4BtbR5yC/D66ixcgdhd6YevorSiXZFAr9RsDLYgVmeCDMC/2QvsYtYXEa9DrewHI8/s84H16AC
	A8of79L2Aew4hUSrFD8Zow0lxF/L81z+yAEeS7kIdF8OUW7EJPnxQpYt8dRaJvi6SSQ/XuTjBt6
	q3EgMrYfMjhA5nO5bprm73cFEr9vx5QHT7v5aDs450GW+GsOzSFTg7MFz5o76EeL10Ftg8bSCWV
	0vBm/bgKKupuDT78LH85IUIaDcnF1xOK2ZhDwk9brATpeJGuNMwerFV7jvG8HQER2fON9XXyFFF
	2IVUZyqN4VlbBVB54u6qaBbgU3UI+c2gSRWHYOZa2vICVzSPy3grAhM4825bs6qjjvYKfhI3m9o
	V8jfsc3CzoSyW7V9CZwjFToShCP20ojyyUj3gkoVblxNxZk8+YIvaQqodc/+eCSIbQTpjFsEVC7
	L2sa72LJ10829M=
X-Received: by 2002:a05:620a:19a6:b0:8cb:5566:c947 with SMTP id af79cd13be357-8cd93b75c2fmr191017685a.17.1773102019844;
        Mon, 09 Mar 2026 17:20:19 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd870433d0sm330913085a.22.2026.03.09.17.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:20:19 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: thermal: lmh: Add SDM670 compatible
Date: Mon,  9 Mar 2026 20:20:36 -0400
Message-ID: <20260310002037.1863-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002037.1863-1-mailingradian@gmail.com>
References: <20260310002037.1863-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C4D45242FA2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273167-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Document the SDM670 LMh.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/thermal/qcom-lmh.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
index 1175bb358382..ce72347e29d1 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
@@ -22,6 +22,9 @@ properties:
           - qcom,sc8180x-lmh
           - qcom,sdm845-lmh
           - qcom,sm8150-lmh
+      - items:
+          - const: qcom,sdm670-lmh
+          - const: qcom,sdm845-lmh
       - items:
           - const: qcom,qcm2290-lmh
           - const: qcom,sm8150-lmh
-- 
2.53.0


