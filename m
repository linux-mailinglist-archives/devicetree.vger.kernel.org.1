Return-Path: <devicetree+bounces-222794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 366C6BAD0DC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE97E3207C9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22A1303A32;
	Tue, 30 Sep 2025 13:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g/DOm/ft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33368230D0F
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759238849; cv=none; b=RrGX+r6ybA9JF/FnXfyQkP9HgPLogdhWnZB7WwcyiUraJOr55Lj9nM+xsN/lNx0smEQUzA9y3Y0RiViVhO7tj7onZGxB8G/0wvNLq2skZTQw5qV7mjuP8klkzGScJu3iC1ISdtS9oSjd/oFdNlIODvvTRUmlc8tgTgwsHnfgAhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759238849; c=relaxed/simple;
	bh=p280qPQj27zEghzXtASKe/5ZJm4NWAcJ5opk5rxq8ss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ej3NE3BdfBBykm63ClLy4BOX7OPhL95d7O5OqTs6g/Vd2clpQSUv6OLNlUTjsAF2Jh5rGA+8WSLVnVpvUuBxyN2kd+YscsEorY7Ba2ddpG0/NttiYIk850JPyOcbsNA11CHzKRh4I84vOVy/dZ2juksvm9s3vL71qTvOmunjiYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g/DOm/ft; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so465853966b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759238846; x=1759843646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpsQ648q3C0xKugj4mrt9FABQZLoyanw2vv+wH0Qsz0=;
        b=g/DOm/ftd7Mj7D+q5GPZ47BU5tOLnmY/ck72FUktAk8JpiKghPMqmLJIz0rRJfA81z
         rajwp1wcZ/X1BzTw2EVxRWx5jGM6/kH01th+DYTb2komLNSDQQNmlEd2FOtn2osljmMx
         CuKlWT0RI5C7Xsq6pFCKE//xChYbWvR0TvlQSKV2Mp906Uy/IJXlOlJNp/rz8QN8Uz+G
         9C5UxKLCVyC+irERiD8xWv8QMIle6h9li9nKkKuQ7AAvp6Sggbi8373izgrnWkxaiP6G
         FEVf9fJq7KUGrsB+gVnA/MiZEflRYzcCe+dVMaKDLbz/AtEw6SXJHJfZk20IiD5yG7Pu
         WcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759238846; x=1759843646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpsQ648q3C0xKugj4mrt9FABQZLoyanw2vv+wH0Qsz0=;
        b=wNIfIW6RvWe11u3q0F9oNEYZHWEdoIRfJ95ClJAUbkoBM+tykb812W8i2z/IeFpofx
         ZVL2K/X64Sab8REkhce0L0HyvmVK5d8t233+vZBX36jjMFp0uluHqtDX4tj0Jw3uLjjm
         K53isjP2BORZPrOxW2s28J/z3D+Wwz8Htzy0BK47uq92VCy3ypO6h/jRkIkzXFd/CTy3
         tobWZXZbyLIqz7YRTEeqDBEjAZo002SvMNlt+01/0OrhyLAUuL1tbMZ/cO6x5mpNlDMz
         3TisS3g6M8EKcA5tUNc3MZyogihwKmOc9VNtoQix47S0qyXMGTb0w17Ac8v4sy5RxHNt
         dShQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtVUxq5QACUWenrLYgaq0Eau6wIPMOP8LbSBEq85ohqWl0l6OrHvn/TiV6sx8prWesBhXzZR6ALCa3@vger.kernel.org
X-Gm-Message-State: AOJu0YxNPULZd/Tlu89D1ntnPNWFENHcFa83z+XaldT8/URJNkbAXmat
	+cXA8kt8XgyV/KH8vKtCrE5Lx7ms0CxONoVBwo613sQzAfhQf7iPY6VA
X-Gm-Gg: ASbGncvcBRJlaGmxX2RUd/rtD68vRt2foZZ6/RfZjWXnobiZcz5T9DIKpFni4is1dML
	L500GvOBDH9iLlaoXWE3Ob1wvjbqgPcWaJjxd9JvUPVEzP/6UicNSwfu7NfMBfgKWuLl2RIGkDp
	/zwkUwPjvy/lM68TDrOpVMMf9beCV3v3d5tr4/30kBALOtDd3LG85hhxI4xLWBYbMX5s/Wfn6Cq
	MarkbMtf98Sz4zWITSm2Ap2VzdBpJ00UGKtVBVbqZPTAiYi13S1BfDlW0QQa1ASXrF3C3+izhZe
	wipvSy/7eu4ysUH3Qla3IrOPj5t6QdFuPxDXSn2IS9scc2VJM8QLwShq5jKuRbXhG3l/rteqkXF
	PHkpDuTUanNsBNcAXkUeOTZFuHsmgIwze2iZmbcEeJKLMSpK701If+3YrYV5xGJpP7Q==
X-Google-Smtp-Source: AGHT+IFqZj82HIUPV+dIzJvrTOxVkE1LRYZqyDhYctKIsl9P0BboCTyc7K3Z5HX1b2xDNVD5wraHXw==
X-Received: by 2002:a17:907:3f88:b0:b41:e675:95cd with SMTP id a640c23a62f3a-b41e675a6damr413544966b.13.1759238846374;
        Tue, 30 Sep 2025 06:27:26 -0700 (PDT)
Received: from crusty-box ([88.223.153.72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa46b2sm1143934766b.24.2025.09.30.06.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:27:26 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: qcom: Add Asus ZenFone 2 Laser/Selfie
Date: Tue, 30 Sep 2025 16:20:09 +0300
Message-ID: <20250930132556.266434-2-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930132556.266434-1-xerikasxx@gmail.com>
References: <20250930132556.266434-1-xerikasxx@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Asus ZenFone 2 Laser/Selfie (1080p)

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9f..1ad77a68fc11 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -88,6 +88,7 @@ properties:
 
       - items:
           - enum:
+              - asus,z00t
               - huawei,kiwi
               - longcheer,l9100
               - samsung,a7
-- 
2.51.0


