Return-Path: <devicetree+bounces-164415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA0FA80F0F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A74AC427732
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31BA9223709;
	Tue,  8 Apr 2025 14:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="lIj2ulHo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59816219A7D
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123988; cv=none; b=lfFF3KpqXWNtUv/YX5KlGuQj+94tf3J4ccROFp+ljh0JYdnCLQZ/Og9u2J/5aH296rpUxJeRdIIpwCGSFppNnnRMjrIrC0rdtYKGa9SmGrAznNhBBm7UcTZzfSEzBisT35FMUd9zAh11KyIjmA+R/mzoe5gML09TyUe4e46aSzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123988; c=relaxed/simple;
	bh=YzcC/8IF6WlBpTBBJmagM6VLu/QII2dkapejxYRXF+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V5rNyHSYw7e7uJEuSPkwi9SMq74yHlRN1D7Gy2TvwCrVUIRQHvl+8MSZy15NyJFHRpqxMFYBIdnrYHvoquz6orKVa2MAQ9RdIDDMYkWgOfQZO+1S9nA5y3v2tR70KoqQfuu7oxAl2W+NdNk5WirvDUYzbPNOWs4e37Bu/bA6ajM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=lIj2ulHo; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 354FE3FB6C
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744123979;
	bh=xut80Yyq76Rm1brNcTNysemzqDnut4empLNRrM1YUC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=lIj2ulHoLN5ynVGTx3opX/qS/GL/SnHq07+2NDHbBZOZhVHaGT1Pd70k50kG0IIhX
	 4hGznLpZy6lvRU2V+Yw2tkC2pBgUAiu7rCyxcd1mC4yn8RKSRu1nJTpUpu1nsZ7Ngw
	 O2dFWkOKDEWNTj25lFveW+vO5jKMBtPsWaOJvuPoCqVB/UcZH0FyVHxQ927dJVTPyE
	 0i+u79rmwHaWlb4QotExvpbNyByg1J0Ny6dtn0A2+YwwcASpBd/jPznljfVQ7xv4L5
	 Znfokk3On52Otl8ZDcD71+zwk5JPlItUeF4jm6CpmY43/YOMY/viUzr3iT38aFeT8q
	 Hz44UFG3CZkRQ==
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-5e6136633b1so5173043a12.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 07:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744123977; x=1744728777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xut80Yyq76Rm1brNcTNysemzqDnut4empLNRrM1YUC8=;
        b=izRcuWiP/AaY0IdzVzTI5kEUjVYLvn9ClfmWN4p0McN1w/OPt0hj3J1Q3tSPBhHgYa
         OU9gOYmLVt54Wx/wX6V1Z3QpAQB856x8T9J5UcjarjjLNb9XiB3aFzSn/W4shbsqI+f7
         4lnuohxCwxyQfyWWPN7SAwdcdXDS86ps/Ymw3RjJe0uWlDs/GrlFXK2SSRPXWnTG2pS4
         3Wk3XY/tlQCTHCkFqGVC5Ivo7OzLYOxsOH/bktGQ9zL3yl9xJtvNyl0QW5C8dZrkYrG+
         HLVqTPo2PWj4djoTsO4rk8l4sPnmCHut/o334jI/7HOiSlSiuI7HXbGgGXTUvC+K1SSp
         5XXg==
X-Forwarded-Encrypted: i=1; AJvYcCWtVwYECNM8r0ZHiWp9+9251UcmkTznu9hf8soQepNgQXTNsihRdtOH5fiS/fOik0hiNFTCs/XLo8ew@vger.kernel.org
X-Gm-Message-State: AOJu0Yzes/WO/eysj9gUm1QDCY9aKazifPWjbR9asxPle7chBpSDizWm
	DUJWhktKZJMermAaeJumi/ZSg+vHLx7NEWl7gLi0iI0oQ5UtmTdAM0ILKd8XmecT9yfpBySGDXc
	JuR6w1EgaIQysDaKOQ3eacSXI/FgsxJhr0J1C255m8bpf2Zs83AZnI8kRapFVzSUfngFdhQHVM2
	tlKX/dT0g=
X-Gm-Gg: ASbGncuYj6j9Zzk7b3744uw4fX7DzhsYNHxRyvkAUqnvPBeoH4lTrhs7eUYgSGijuo2
	tsTonGA+KPMYUuAFUtzzClcOBbY7jsKhudiCO/8OGR5NBsYYOyNNOUl+DBPgwGRhltrCYZXM7JI
	A9DzEHZ421P2N0NqzQkxiuFu8DXQfsx/9Nb+jyL56vk/RspM9+A4jpuQcBjfoLaVUmCPXEH5EDR
	ygfYFe3fFI9tcjo0LtEU3OtSZgBzWcIvIXINA9HqGowsczBOFHGHOzPc6xz1BoKdayjuh+aIi3/
	ue6plPXOinj/re3D6eudZnGvEVVgS9iGMDtT3wirgENCl3gzwsu78svzd1zU
X-Received: by 2002:a17:907:86a2:b0:ac7:b48f:4cd6 with SMTP id a640c23a62f3a-ac7d6d567bemr1490493166b.24.1744123977060;
        Tue, 08 Apr 2025 07:52:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1rJL2oh3cfUJLk5my47t8hoQCjxMJuINUXBfM8HYiul6ras4kK+imNaCIKqnjSFm48aaaEA==
X-Received: by 2002:a17:907:86a2:b0:ac7:b48f:4cd6 with SMTP id a640c23a62f3a-ac7d6d567bemr1490490666b.24.1744123976620;
        Tue, 08 Apr 2025 07:52:56 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c01c1085sm916323066b.183.2025.04.08.07.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 07:52:56 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
Date: Tue,  8 Apr 2025 16:52:50 +0200
Message-ID: <20250408145252.581060-3-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250408145252.581060-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
 <20250408145252.581060-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for the HP EliteBook Ultra G1q 14 inch Notebook AI PC.
The laptop is based on the Snapdragon X Elite (x1e80100) SoC.

PDF link: http://www8.hp.com/h20195/v2/GetDocument.aspx?docname=c08996392

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 6260839fe972..1f2a26ac33b9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1133,6 +1133,7 @@ properties:
           - enum:
               - asus,vivobook-s15
               - dell,xps13-9345
+              - hp,elitebook-ultra-g1q
               - hp,omnibook-x14
               - lenovo,yoga-slim7x
               - microsoft,romulus13
-- 
2.43.0


