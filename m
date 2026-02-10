Return-Path: <devicetree+bounces-264193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIcrK1WVimmuMAAAu9opvQ
	(envelope-from <devicetree+bounces-264193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:17:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0211163AB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4178302F707
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 918EB2BD597;
	Tue, 10 Feb 2026 02:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ICFCPa0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBE227703E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689867; cv=none; b=IKBEOGIUf1WhMd2VkGIOdMFica/yWh8gZp1X/mxrWI9K5BD5E+jFWp42OC5bROMv8qpilAPSdQmg2h5CvJCCv6OTuS4AP/WVBeZHJ2GJhCQGfC2uHg3XMM4UGN5AX7Xdj3PuIYgxv3j1zNHHYGiru1JgHVmQTqL2lSvWRE4Dq6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689867; c=relaxed/simple;
	bh=64P6TH5tCSVMwzcWGEk/Kd9i/JzKQ974GxQADdiPObM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JahyJYYMs7Su2Whp2BhPuWXZqrwHwHA3XnE/u0PyNWDN3xhChKcJhJlbqRZ9bRSfu5PgYZ7y7hcOEA9YiTbsin3a0naxQ9CvyZgEzZ3GV4cqnWumJBlmWgdwG0uAU+vfuIzkMJgyX0HwkbqqWZJOTauQZ/+riqIpVE/rvUBmw7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ICFCPa0J; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c711959442so496879285a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689865; x=1771294665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LFScp6N7rXDmSB9O1T48X3nURBntcNXjOboC9T1hpss=;
        b=ICFCPa0Jguq+DHBZh3jXNkh1xFl21X4gV3dTxDlnEX8XdkftWHCR+nnUdX68OaITwh
         rktgoiGaw8FtxzpYdZG6gjUWIapV1+HOvTg2/CxFEQhKtQ1uIxfLV4oXt1bd+MzJU7NQ
         pcEDBTDyU90dugGfYjlh37lgF4Y1pUmcF7GE/5RjsS/XyZyFjxkYkKEP57kCLKqwHZ6a
         MsQLBu2hvz3flF2iobMTh3Z9oVRRn3fPU1BDQYUfKyADPhBsAj0x9Cwzj7SpLtRNOu0W
         5eX/QXtponiIxQLrP6jYjDFxwffqTYFI3AHBKbO+kml+F7lXJNd18AhC8sg9/YuIHl00
         J6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689865; x=1771294665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LFScp6N7rXDmSB9O1T48X3nURBntcNXjOboC9T1hpss=;
        b=vD/50n0EPijAgpQRSnMiT93E9IYVyy8uEstKY4niE5VLTGcp0/pLSVQQCZGMl0RAh5
         +UsEJUUau6cuG1Sty2xPWBGIQi4QuSfxc7AEiXOHjZc6nBCKj20i6Oq7fXTT8GAdT5L7
         nsFvTYkyZLcxEEqM5I9nYkga78cDyLx6pcs+igF9uHah59bNb8hGHxajD2xIY8BqdUWx
         fvbKPsfZdXgTfTClS23uTzMP/B8z+La8ryucKlhiitEW9OEA6jTQ23lDEDJTX234IEx1
         oJvbHBE5SYLUsjaYZC1rE6/x+IdeFvLwp73mvXAZecG+4fCJzO6EouMa3pr4niIJKb9m
         FRfw==
X-Forwarded-Encrypted: i=1; AJvYcCX3lcxyyRdqRI/QOatJmuIo7kSthPyH5oOw3J0T4owAu6Oyi15uDEKwqk4EpdBmqSD9OHunQr1snjtG@vger.kernel.org
X-Gm-Message-State: AOJu0YzFyKfCnSIcAlGVaSpJhuUYm695JZ8e8OZ9i6NzrWzgFXzA65m3
	xpr9EYk/pe8IQmn8MEKsNydkbEX7rBz11voVG+7l6XD9PGE5P+f0rrCe
X-Gm-Gg: AZuq6aKtHm6/7ANbjzMRcmSbAwCZin+dOoXeFx0C84DAWS2GTsTixdAgIo6aREo4EHY
	7BECmId/DVhy47o0BfCq6aQmsAFfazSR3ADrlGZti7iz5AzINcPDMTjU9SGnWjVh5Oo//fwwK/X
	mM9jJX63m7X4nuCof5SLFeoNz3UMNEtZ/pDcAnmFL7QKOLyBh57Mmqb1YkFGMoH7s5REDGPRxbs
	Jv0zTkbG9fO6jNt0Au2QxcvHAGgJ8J+UOzPSUBJamJ7d1dmqGrRQz2jH0lZFzGuUIKvfslaPmsZ
	mWN7xoondoUr/tM58isWw0dHNG103+xUHc0kFcucYbGOIMJA4XGXOAnzrd3jE0Rx1wB9e8l5CW9
	r1AKpolH07b22aNDnvUzwk0Aae5KDXYpAuNsnYupKSACSqKTjXg6nCSflMpIGpYBaofnO5HXMkd
	LF0DHu36FctfBAgOhX/DF809rLJCd0Z0ylUlbHPKm6N1VjZvflN0Vj2J0VdarEg0vwtsSH3UyNL
	/tXm8CYPXE9yZ4=
X-Received: by 2002:a05:622a:5d4:b0:506:7049:c768 with SMTP id d75a77b69052e-50672a2446dmr11457081cf.9.1770689865393;
        Mon, 09 Feb 2026 18:17:45 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8953c077a8asm91378476d6.52.2026.02.09.18.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:17:44 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 1/3] dt-bindings: mfd: qcom,spmi-pmic: Allow PMIC4 thermal monitor on pm660
Date: Mon,  9 Feb 2026 21:18:17 -0500
Message-ID: <20260210021819.12673-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021819.12673-1-mailingradian@gmail.com>
References: <20260210021819.12673-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F0211163AB
X-Rspamd-Action: no action

While newer PMICs are compatible with PMIC5 drivers, the PM8998 and
PM660 are both PMIC4. The PM8998 is allowed to use the PMIC4 thermal
monitor. Allow it for PM660 as well.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65c80e3b4500..d2fce7f669b2 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -221,6 +221,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pm660
               - qcom,pm8998
     then:
       patternProperties:
-- 
2.53.0


