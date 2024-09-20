Return-Path: <devicetree+bounces-104042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E466D97D1D8
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 09:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C1A5B2343C
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 07:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4638269959;
	Fri, 20 Sep 2024 07:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dgp4QT/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA78D57333
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 07:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726817966; cv=none; b=WPJJiTNOTMslHekyB2lVXghne/NU2KVDZRxDoHJEbPmSmP6oTGiuba+QG3frVet55F9dEjmlw3jiPIxcL5q9BIqnk++ogMK7sqrpIfs7PUPfe6CSkSxS+sWjo+sa+UrSyGuuUiSce7ypLC4frzpR8VoOz/n0QqinkYEu38oQ8Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726817966; c=relaxed/simple;
	bh=0k8ksCBEILGEf/m73awHSumKV1bg5YEQJrbmB46fqmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uKFYTRHjMTnl0s0Lbv87gPbcNNONfCPtLypTD7GA75PylV72p5oAntlcrVKqfpqTN1mfdg5lw9xCSYu/GuIyzhk2oWq4NR56WVs+0mAS1EynNwsX5WJfDZ9I/ytgTHzSjPPvYdFNIS9PinvNfL9OLlK4EQPPUU5l1gNCiJ3vxvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dgp4QT/K; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2055f630934so15194475ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 00:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1726817964; x=1727422764; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ruwmjdS7i6iu2fXr/1ljeWFvjxlJAr2Uh230cCJEG48=;
        b=dgp4QT/KlLbJ3mEFsl8EifMt4W2Kn5G/h+3J2y9zhnTiLm3viNEN6I2uLAb8emzwey
         oFEGxFmonCLSsGx64uvJms1YSuyXHmGtrF1IXMkF5Ajuc0qeKxS/9lz5IwkZxArVcBgl
         5vspfib+wpuz+Dbo2VN/s2dFOLADfpxP+7H01LKZn6OvDR+0qFeezcEV+bX3FPNO8jUI
         t+BeTqWEvW22tR6Iprw8PdINBHk9zzMXyHO4RAyG7g0EJjlT2ux/9/OWWU4IjF/noF+D
         M8GXpyv4QpD/t3wbryJmOWkZTHQwJK29jXoiXVbGFmNSwF/j5sF76XUm9qawcB3zf6CZ
         V6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726817964; x=1727422764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ruwmjdS7i6iu2fXr/1ljeWFvjxlJAr2Uh230cCJEG48=;
        b=tCcX0HDNQD7ZFzrpP9kHECZuK4Eqsxb1ATE2pLmR/sd1ggAN93TwsqoF9Y665ealol
         F6A/3riyRLGQfSv4YYd4mWs92wZXEuMz3SITINdNG/u2jJCpmwUsJ1eZCitVf0CcuZYJ
         amBSjH2Hklm5ZkyGFYjO5z9GVBVFUzexgSrQtIy9x7npQbziWA9civ0x1dSe4lEMHIiE
         4ofy3vSpZ+HZ8txXR9qAAiKY7y0ubQAYHBYxhyPexOijK88BA97hjSoieNSIqJhcCw5p
         IF2HTJoqaXfhGXXVy89biB6JUHUWs5+gMAPYlp2XR9O1JYib8TFEOMIk4ZcQXvlTOmHW
         uVzg==
X-Forwarded-Encrypted: i=1; AJvYcCV0FxBVMdkqu0MHS1xFhwCcthqb63Tpe4vXK0OJ7H6VT5/Jes4tvAO7arfiLQYCSloprMzcAg2nTrOX@vger.kernel.org
X-Gm-Message-State: AOJu0YzwVcsZMSAvVh1Syksl09OAzeEhpDzHba5j6WI8YvDSckeSXtao
	ua6O0NJMLX0hPJtp/dv29x2x5+6DjdMEO7mltYn3613E4nEgmSdk7w4VjboPEZY=
X-Google-Smtp-Source: AGHT+IFQ17yTVynIy2XrD45IeMLpoJPTm7mZPtHiliv+sGkaava/UbW2FEYcKNJPThWePCcr9bME2w==
X-Received: by 2002:a17:902:f693:b0:206:c5cf:9721 with SMTP id d9443c01a7336-208d830ed04mr28068335ad.1.1726817964075;
        Fri, 20 Sep 2024 00:39:24 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946fcaa4sm89645805ad.212.2024.09.20.00.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 00:39:23 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 20 Sep 2024 15:39:03 +0800
Subject: [PATCH RFC 1/3] dt-bindings: riscv: Add Svukte entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-dev-maxh-svukte-rebase-v1-1-7864a88a62bd@sifive.com>
References: <20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com>
In-Reply-To: <20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=0k8ksCBEILGEf/m73awHSumKV1bg5YEQJrbmB46fqmU=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBm7SalmDrzx1nt7U4zRVn2TPSNvgiS6IDu0bWQn
 Kih/ez6tBaJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZu0mpQAKCRDSA/2dB3lA
 vYzBDAC4qFye9TdTtbWuZxd4jp5gc9vJmV5AkP++702TLaSmioYtypI+JvTir7sHlehq6ncb/yf
 bmnci8IxCkk1BADX4GYvx2EGMziigRvdO2ZyTCIUr4Oe6SazBRjKSHvpi6QSWiCZAyhrXMtbFhe
 h9QvCakpMYjDTpp7Xiw2vj4VfO4nILyDcQCW54ZnUMqsEvXm7Yf3lIzElrG0gFmU3wfUsfxhc64
 tQEwoVnpzClS/JFlW2tW+zaI31qv4AQ6Ntw880KMfwKu0gI8546318I7uHDl0HK5ZVO2jrt/pCF
 iRvjX1UeHaIRBYdojju8pI7yWfoHS8l8yoOSHhtJ/rpRCUsEzPgVb9lmEOofF6RgxmnK4ZbYUa0
 TjF5lJmjW+3hdk67G2oiL3DBWnp1OX3V11ciOBnWkZMTOhZLHbPAtlNZ33cYDb6zJrQxOGBqPgy
 VUmHLfSABhBVe2ryVn0D7VUjc6DOJgIl9nWifkZyuAYkCuv2SKqBunOTfIIcuVF+WdCro=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Add an entry for the Svukte extension to the riscv,isa-extensions
property.

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a06dbc6b4928958704855c8993291b036e3d1a63..df96aea5e53a70b0cb8905332464a42a264e56e6 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,13 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: svukte
+          description:
+            The standard Svukte supervisor-level extensions for making user-mode
+            accesses to supervisor memory raise page faults in constant time,
+            mitigating attacks that attempt to discover the supervisor
+            software's address-space layout, as PR#1564 of riscv-isa-manual.
+
         - const: zacas
           description: |
             The Zacas extension for Atomic Compare-and-Swap (CAS) instructions

-- 
2.43.2


