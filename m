Return-Path: <devicetree+bounces-227641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0042BE31AC
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DEDC3B36CD
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE84131B12D;
	Thu, 16 Oct 2025 11:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hjElTdis"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2E33164B0
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 11:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760614541; cv=none; b=QKXSvBAE9I+MLnsBpzPyCpPL+QKuk0M1y8AhL0dL/+DHFkE0mU1hYPziAqwYx+rT+/qGP2W4gyPNAaqLnoAGPDMLoo133aYLt2/Zkm5zhAzSaMdBbHQ4A4aqf3AKYFTco+qhezw5IjZrqqaOZWO5UqbECo3B35D2TVeFE5KTMvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760614541; c=relaxed/simple;
	bh=DC16tUoCJGqdCaZCKlPxmdAri6UTD51Yi97Na91Z5Ew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yp2eYO3zPkPIJ+z6MIax4RsXyyAKvt9Y+l5qhrRTW9P+oA/wM87VAVQqmGC6AZAIuNKG40H+7njm6ZcdUe5fcKFC1bzq6A810CzESV6xiJUk9fijv0P4ZKIxC0klxxpvRgXvC+uCat5SNZfGDuyz/TzqxrehHgPwFiFz6zanHjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hjElTdis; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c1a0d6315so118247a12.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 04:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760614538; x=1761219338; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlfDjHrcdfKrGBvOyIQt5Lw/+fx5LVzeszJPP8D8ljg=;
        b=hjElTdishWAVozrMa4Qqu1zkvA4d8d6JAzOE4N9xkkCh51RjH7Nlm/7eSXmWQ4dKvb
         e2sb5AIAI7vUiJpIy5AYtAXlGvJDHNeFVXf7wWa8axF///63+qy4Bif6aHAJcG2lutRT
         qvfaSYq+BzFxHvCIc1QOHBqNDGdLt/No7mUyU2aG4b73CFfriopDIZlvhBEJ7BmQFgb9
         4XipoIdZbrCWFEY+y+FZKNzJ7ymorTA5TBdV9zjvIAAPY1dV6LyfZq+K6ejdI+sk7HGG
         CJWMojUAsgcsmKmjCU+BbRywbRz3/5dge9ByALS08Slyf7A5OzuX2mALmIFXtTTf20AE
         473w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760614538; x=1761219338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlfDjHrcdfKrGBvOyIQt5Lw/+fx5LVzeszJPP8D8ljg=;
        b=Ddq9SWzOKFnBkS4Uk9mYKp1lBE2Xqb2B+xaPEq1kQT0Mb9arAkJKby1qQ8RuPDxpBT
         7g8Zlk743AWnrjUnnPRHWgeShOUjYHGkKWmDK4Fe5zwPs7lAd6J1F5I8KbI4aBF4JeOV
         I25SraXM0nyZRQuYedju4WAEG1gqQxKAThjtyfpJq7jEBn6bpDip0LgK7ewSkzbjaey/
         hRlaCRipUi47QhVtbTKga3khVm/vpQ+AIppqqbtdkRXuLM3gv3gzCuAg+1DtuewwsAER
         kPmPvdteT2aE8+Z/iPP3Hh4RWFGPikUBdiZXQZ8J51y/LPYf8yeCSNfvJmY7eUYb+kWI
         a5Eg==
X-Forwarded-Encrypted: i=1; AJvYcCUsBHjugO8d4xZuu9XjpqVchcPnqtn4CmnfEgg8dMR6BPIDStoRWlNM59TCNdim0RsSUEc3FG8dqPBt@vger.kernel.org
X-Gm-Message-State: AOJu0YzHH19X70LsHp2s4I21zIY9jethhgOIFXI6e6LeX+jPaoX+G4BX
	QuvE6wrG1uE8lj9nZDMqHlQCUReRTrMDU+VGpUf6ahFj7fUw9BS3OXC/xrqWW5iNuCQ=
X-Gm-Gg: ASbGnctHd/aLcnWdJjv3kx75ALiKXeWhrucPvvR0le+zbYIW3/Vae+TVrCwiZaKZjWx
	kTGALv5Au+ezn8ImR4EevnQgfW9SMNItf/tW8D6OChWRM6Wx1WXHLNeNp/+tF7hBp7HR2Rimy0V
	s/XilpsGfrvH/aLqjc9rZ4FY/Q4qMBO9yHhLhi9M8xGEui5czdzSpXYCrZblGjgSR9xFBO++RrV
	GiEw0pIxF7U5BvAKSQdabo7Imn1EU8yBQiA3UvGX/IyAi3eACPz8DN47x1sbz711E+VnkZQ4/Ct
	ktorc0Q8IGpDRL19zPSC0WkIfmufc+32ipAKnHup3BmT3fXRC0JkfhlmfIYxOhEemTagNywDp3L
	6ZU8S+sdHESBAqftX5J85i3FtQ3fA/eaz7GOyEYNQiGQxfaInG3c/Pxn8fbYjdGwPqdn4NhYVSp
	BZDotUHqZds/xbc7AI1P3rxIQKlbUv3VVlKeXFqRIKcyuI4qYZ3gJ16JwpSQ==
X-Google-Smtp-Source: AGHT+IHJ/BAd/YZqX1JBpTnZFq0JCBUuUuBHCuxb8Ss+zVnUBV31V1Tin8ZI1NwrXSvqwfYqO72CDA==
X-Received: by 2002:a05:6402:358e:b0:63b:ee76:3f5c with SMTP id 4fb4d7f45d1cf-63bee764a26mr6128995a12.15.1760614538176;
        Thu, 16 Oct 2025 04:35:38 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b1e89csm15849397a12.19.2025.10.16.04.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 04:35:37 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 16 Oct 2025 13:35:22 +0200
Subject: [PATCH v3 1/4] dt-bindings: media: i2c: dw9719: Document DW9800K
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251016-dw9800-driver-v3-1-d7058f72ead4@fairphone.com>
References: <20251016-dw9800-driver-v3-0-d7058f72ead4@fairphone.com>
In-Reply-To: <20251016-dw9800-driver-v3-0-d7058f72ead4@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760614534; l=839;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=DC16tUoCJGqdCaZCKlPxmdAri6UTD51Yi97Na91Z5Ew=;
 b=f8/xkxRl7QiZRrstdSBVPFUpP2voe/77bGBdMjvQ37AZ7h39ZjJyHUPpa8Lipcvz1EMHgxG+w
 0Fu9lE4y61/DGbzympht0OaCB5KU4AmiRMFG6PeCNgDvyFcywXnCcZF
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Document the Dongwoon Anatech DW9800K.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
index 38db0764c0f70ad49295dcddc182b7e100a68b29..8e8d62436e0d0c4f9af9e52262b23881abd37cec 100644
--- a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
@@ -21,6 +21,7 @@ properties:
       - dongwoon,dw9718s
       - dongwoon,dw9719
       - dongwoon,dw9761
+      - dongwoon,dw9800k
 
   reg:
     maxItems: 1

-- 
2.43.0


