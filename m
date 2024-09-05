Return-Path: <devicetree+bounces-100484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA6B96DD84
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:12:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 430641F266C9
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD9019F408;
	Thu,  5 Sep 2024 15:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="kMZmYw7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF0619EEC4
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725548962; cv=none; b=D6SwxigLHYlqshBGZmEko1Q7FAVMINl8vcfwp/08RI1IjwiXpv3572CDkl7oLMlXdR5I1Mu1s9c/KvVxgl6mXD5XnTPCdy698bQk0CEzLPBgNNR7Pkmc0uxyiFLeBw2ZSUv+GEHmgLIPFkntXBuHYqNLq6DCXMNlcCpGyiHrY2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725548962; c=relaxed/simple;
	bh=WLkEW3TQoHM0CaqvHP+UnEcZrNRj2Yf8ItE7bUlRtS8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gjn4tptt8GPyqfFhueaEWDk4JFdP2DPqFEbP44D4/KB8+1f5gesosdkhiC9RFVim/NsmAKZIb82gGbxne0E/yg633HkWrQdl/Wf1zduFnG5BIJL8FXwwZkUc3bjh6Qs+JFlHTmKj1pmfvuyNPHMJax+ThWnGTViGWwVEe6Bemv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=kMZmYw7r; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20551eeba95so9140765ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1725548960; x=1726153760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sETn7qpcDB4MO8FELll1einBheR1j7SuMJsqhl5kLhI=;
        b=kMZmYw7r31IZ5vUzT9lEpFsr64xE8JIG/f5ggMzZEwxcN26Zh/9xfB23GZyHVn0DS0
         F9YsLnfj+x0IHT3tHOcXHJt4EUzwEFd3+fW+LIk93bCQRYp1sLyu+GmDAXKvYvSSiZkC
         w3fYx1naMzzpdwkadNaexIEYOT3+33DbeARBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725548960; x=1726153760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sETn7qpcDB4MO8FELll1einBheR1j7SuMJsqhl5kLhI=;
        b=gWROdOkDSUUPUz8vSa+kcHeRt0hjGSrYEFpQmixXx6V8oN+1nfwnyxbvhJRvEmgbzl
         kbgt7u4/NlJ5FOQq0w9SaRH1WwqNH4XP3z8PnObTyJmGDSt68tbaGe5cGiHELwPnRoWZ
         SSSrpH+4pj3amNSNMzENdCGRJn3MJYqPl7y2OR/9SAY1iwOXu8iJZ/K2a2xffosinDMr
         8h55JWs2iVJb8LZP1WwM4z+aWyjNoTUrdkPe6fxvv/rrkhcwc4ovw1L8QldOTjwPoCup
         uC3ov18ku3ELe1qnfRtN9R4TItnBed2dabhw1C0PcB6+mPw0B04KbCgozt4BbKwyhAVi
         Mz9g==
X-Gm-Message-State: AOJu0YwoCJRHTLRVWnihpyysENWLW+eDsq0ZERIaR5HSNu5qlHi14Y+A
	PeHZpCMVha30us5+r/3PnSOo4zwp4/1IN3e4IdGCzy4y/H7CmiQ8da5NihHKHaEzLk0hF1aIpSC
	C
X-Google-Smtp-Source: AGHT+IFSNW87jp69oRBynFcp7ozKI+L/QlTrEHAUPupMO1ZJANWl5CcvIppe0l+DAhSA/H57Jt6CWQ==
X-Received: by 2002:a17:902:ced1:b0:1fb:90e1:c8c5 with SMTP id d9443c01a7336-2054bd0fad0mr206521375ad.33.1725548960470;
        Thu, 05 Sep 2024 08:09:20 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea556f8sm29779855ad.198.2024.09.05.08.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:09:20 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v1 0/1] dt-bindings: crypto: Document support for SPAcc
Date: Thu,  5 Sep 2024 20:39:09 +0530
Message-Id: <20240905150910.239832-1-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT bindings related to the SPAcc driver.
DWC Synopsys Security Protocol Accelerator(SPAcc)
Hardware Crypto Engine is a crypto IP designed by
Synopsys.
SPAcc can be configured as virtual SPAcc. The device supports 8 virtual
SPAccs. They have their seperate register banks and context memories.

Pavitrakumar M (1):
  dt-bindings: crypto: Document support for SPAcc

 .../bindings/crypto/snps,dwc-spacc.yaml       | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml


base-commit: b8fc70ab7b5f3afbc4fb0587782633d7fcf1e069
-- 
2.25.1


