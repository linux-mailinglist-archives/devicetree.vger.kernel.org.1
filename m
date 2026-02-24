Return-Path: <devicetree+bounces-267855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCJNCf6PnWlKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:48:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6541868F7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9857531228FE
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1638E3803DA;
	Tue, 24 Feb 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IkD8j7hX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70F337FF6E
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933473; cv=none; b=nTzxS3WOAVGeneuOEgyd2oWzfqJuekPYSEapA3uPyPKWoPR+bJDAIqrv9mq/cl+vQwWsDvH6lsto4HVTBJ5iwC0ChQg4qmekXRGLkneOXaFYJ1BgENQV18wqJaMChP7cndZNY9F+jvMRYJOiVJ8CwBkf8fll+xZbcJx6NYB0GGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933473; c=relaxed/simple;
	bh=ZCy68bKzBFZTZSfOpy3mDznqvrsWBJ+1U7/kAOyrhT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i7QMWJyWvl1b6mY25Dgwc8CRTamlCXJxz2RBxAfGaILf77HEuixX9PpEBCgMogGn4l/PXGaBfLnuTkz8OLAfRv5ETytqNL/JkqCfDeLL+DPOVlUqe4l20vBas62ukF3FDY7OrXsLSf9Nxj0jIUxZGlCUwEcWPo/vI/+8hV1RdSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IkD8j7hX; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8850aa5b56so936206266b.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771933470; x=1772538270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=IkD8j7hXjQlAa/DeuvnG2J1pVlPfTwOoMyBJWl2zCNRUGfRhX4GnK/rlvL+en+vdkY
         MNmOU4sy9IUdpCEcT7+e75rmCvyZEMRGxImlKij6dZf+2i2tZySZIyfwLtQjVuvtrj5D
         +g/3J9+MHgFAxNnLAGc31VtqTod4mmKM0M1ERnT78EtsBijDn7YYmpV0UaARFoZ8XNLS
         sFGKawZp8XnwZFOqq9P/SJ1hInRFEga544V0gTIfoRRt9frYPJ69UEeOY/2cM4PIfGCc
         ZPbQw5f2nGlYIZp3Vm9sZ9on921i3QKsgCwgbtxObPwemRVZY00v0tHEKaNsx2NJQ/1Y
         H9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771933470; x=1772538270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=gVvvxZtLKXr58YA4PNuvwJlj8k1FnN/GMa5XAFLdOVDn+hWmsguloRqMOApUMxie3U
         pgyzL+FSe6mzpHzW+uCWaobim01pAWLLWlFGnkexsPYjRxx9DeF23mzawzFs+rxGExDn
         jX2ucfBWmKPJTPb9qoHET8MrzfaD/afjLGkBvzAcGVoSuOlCqh/7nOerKqLpc8Zbhost
         Q6oQ54LkfFWGahWg7srFuDeaXS9Mis6yUGZIkUmQkxMEn3tsr2XujETO6HFyXdZkDyaZ
         +VjDF2Q6RIPVC7LGuSQuNrqdViepPm4gvOZ1Pxr0wpPx+KYqwEuyNXfOukZedVWiatRH
         oPoA==
X-Gm-Message-State: AOJu0Yy88QMHTxDkMaUFCMUs48I9OfM5hfx6/qHCcJnFQSOH7O/D3NJi
	98xa1TrfDB/3BFkSRLbVmhjbSsk0twzNyjWkdmnmlhWHUJuu6OomQz5chW0bMQ==
X-Gm-Gg: ATEYQzzv5jfgYNgSA0V9Av9BajUsz4h2FRCDykpoHSTktX+lhdlp4yaHIVm3kQ0RzhS
	8h5Kl5Q4fJM8X51jAqh0Bm41leErukpZyVZdnD/toOyjtSDnLNqJyXbqG8rFb8FsvmRCYZOzP4h
	NgS58HnP+DrcdQqrMLozqPCqO6CYDMwx+LEwVgOEUrUHPs1J0gsR+1ezMXQK9ILG7LVIhVs9gkT
	jdtdC6NTDG7JBWWHPMi8mPWEsGWBya5XkQSr4sPMryYgX59HtzP664lVuh8hfkyUjYqY9OWUdGl
	ALch+9pK8UVukFdCR2Bq4Px+UEoFqYsNSNU07kdTi5nAgGWhL2qmhL4i/dPN0rhSIW7r4uIY4jq
	jTYjP7xDqF9dGx1nGSLpi38FsXKBd15ip+pGzgL8PbE0B7VbEocpQv4i90yOn6+941nFiSPQCdM
	toy9vFnVwzU3D8IAUPSIZB5fIjnx57If1P1fR2EqI=
X-Received: by 2002:a17:906:208f:b0:b90:35c8:d01b with SMTP id a640c23a62f3a-b9081b41b47mr490205066b.36.1771933469612;
        Tue, 24 Feb 2026 03:44:29 -0800 (PST)
Received: from workstation.home ([178.231.112.156])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e8cb3fsm417992566b.48.2026.02.24.03.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 03:44:29 -0800 (PST)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
Date: Tue, 24 Feb 2026 12:44:23 +0100
Message-ID: <20260224114424.1966947-2-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224114424.1966947-1-zstaseg@gmail.com>
References: <20260224114424.1966947-1-zstaseg@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-267855-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD6541868F7
X-Rspamd-Action: no action

Xiaomi 12 Lite 5G (xiaomi,taoyao) is a smartphone based on the SM7325
SoC.

Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..711cf3bba6e8 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -982,6 +982,7 @@ properties:
       - items:
           - enum:
               - nothing,spacewar
+              - xiaomi,taoyao
           - const: qcom,sm7325
 
       - items:
-- 
2.51.0


