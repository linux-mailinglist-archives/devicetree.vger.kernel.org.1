Return-Path: <devicetree+bounces-258130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAsNIR5GcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:33:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 075735E1B4
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 08D6C801AA6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E043491F4;
	Wed, 21 Jan 2026 20:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cPlQvft/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B32233B6E3
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769027409; cv=none; b=W7LHOQzAfnvbl11FXy2hqXOrF1lwNInxuy9qV9txDKKvwynJA7U9RuviTzE5TlVA5gb6RiXBI8zMxDSFUzzSrD5YfGDB5mb/eraFMajiB9yTp2SLnCp4egBMzwNWq9xrjC9jCmgXOq4yN59oiIHzDohwPg3xu0+84pCp1K2CtME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769027409; c=relaxed/simple;
	bh=UrNR0zhNEL2LbU5qqZvVw3LbEcb7Xoh8iARAGOnl8H4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iXBWjHyisDjubh+k8WaLt1mWmCYOa9b4FfYOfAp6gjVQpJl97/X3yysXCLLjpajfg4bVwxr2rmLYC95teZ+vtAb+bwUClSee4kl0oEGKdOmtT6kKUcoWB3iB8Ke0o/avbPN/TamdYlkxhIDT2sXJszpgslRgmJwoeaGpS3SvGV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cPlQvft/; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so2290175e9.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769027405; x=1769632205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWtyhiw5Pw8utX8GmzQbj+h2PZ/f4XjFSExYzPcQ2Ks=;
        b=cPlQvft/TaOORNmf7J0ZAlrHalVaJ4m4EwgynheB3XU5+TOe0YIAjHqpNYaDP7K4AR
         JKhTbIYQ5jxjBm8ermpfkkGAZILA+hP4vuFVWXQ0orzcD/2h2cuzUxqeqA6UJD6W1XOR
         PSkye6mebE+NIYWS6Tpiiw2OTZAoSda363Jx6JL1Qu5oMgD1PUP5uzkoYfS170IVoZbj
         eSZs/sooMq2q1UWgVvwMj1x45LDFqkTQA1rbl3UE2alRNPX3l9KcjPRojb9vr+SAYNuf
         rYQq4wCcVlJPGqwHIokyZx7u868WRcQWsNAa4Kindw3OQg/Ymi1Rv7MOUxpZJrTAOmP2
         QFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769027405; x=1769632205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wWtyhiw5Pw8utX8GmzQbj+h2PZ/f4XjFSExYzPcQ2Ks=;
        b=M1XGWMCTvkma1QHY6TmLI0fqMcZthlXiroz2iFLcGGeyk8OLfAL3/8BYO4dbOGstFi
         Yn2LdlPqHzg2/GTWFkuSLoDrgPDIg2cCLgtL9j1bKpsZh6czRh9173dXiGdq6qJhAYT5
         DxG6f8NEqXGiecXs4/bsxF8SZP7vMRusmkPJtVRbj+GD4NDQPh9AqOM5fKa0EDp2xNbF
         GIJZPyU4dSAjawszk17+WqPNmXPG0jtKD0cAfPKL6DMRNtd0epLuFIfoQrmxqY+bver+
         KB76saJw7YPXUW2EsCfkc1YK3qVQOcFF3o8eOYrZk2CGkrykeHerMjrOmWJZt3qLgvNx
         Ud2A==
X-Forwarded-Encrypted: i=1; AJvYcCW3HAvCrmwSrb6idS+dbYpBzBnY1kzdqG862B6AT7vWEkjm6RzBhytl0xwr5rAWnoKdu765+lLr2CZ5@vger.kernel.org
X-Gm-Message-State: AOJu0YzRJRowVhAb8oJjC/iKvgAuQRH9W94EUG+ln0VM96q5coKcOEdg
	s3dibTo9q1CaKEkbGjbMrbuLg9Oe6S3SarKC+tRcJdXew/ztlFpWaAiAog3VOg==
X-Gm-Gg: AZuq6aLLV3KWqAI2Jz89JRYhJWGiQ3BBP8uvfPRmUACo6vr138s64xkElVNH/FiEfAD
	c3scporb6zXIrr1RfKkQthAKA/aI7668jFFqSi4zPfdGtXs/4QZw0hXekiEpz+WtZbPDh8B8s6I
	d4erkJ8N8h2o0y04ehwfj1zJUUWSrvDTf+/Cvk8B4ZQaQW8+pNZ52PnpHAziog/3LvxwzHbDB+5
	93+I7vaFwgx3H1bQE3NtOaMxz/o3E/fulLrhZfEjLSVWZ8Rh4k4k+WFrqtyaTYmnNJ4nyxtvfw9
	2Hn62mQf2KlQoqYJzWdto2YMXLCEIT9Rkh6ffMUHMLqdVo/K56N14QCTgHswfu+IzzzW3Wk+XnJ
	c+Ksa8+l1bbV7sE4yaMYjpOb8evpHB0F/tOXOJCTnnomTlGQ/6yDchHObxaxDevCKpT8LKjniha
	IXjwwFuka7Ck7n/wPdhrfY8Cfp/A==
X-Received: by 2002:a05:600c:8b09:b0:47e:e4f5:1910 with SMTP id 5b1f17b1804b1-4801e34a14fmr262542585e9.34.1769027405363;
        Wed, 21 Jan 2026 12:30:05 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.12.160])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm11819065e9.14.2026.01.21.12.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 12:30:04 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sdm660: add common Xiaomi SDM636/SDM660 include file
Date: Wed, 21 Jan 2026 21:30:01 +0100
Message-ID: <20260121203001.13515-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <a0a227f8-8a5a-42a9-acdf-19c055cbf9db@oss.qualcomm.com>
References: <a0a227f8-8a5a-42a9-acdf-19c055cbf9db@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258130-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riseup.net:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 075735E1B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 21, 2026, Konrad Dybcio wrote:
> Copyright year "2022" is odd for refactored code
> Missing copyright attribution from Dang

You're right, I'll fix the copyright header in v2:

  Copyright (c) 2020, Alexey Minnekhanov <alexey.min@gmail.com>
  Copyright (c) 2021, Dang Huynh <danct12@riseup.net>
  Copyright (c) 2026, Gianluca Boiano <morf3089@gmail.com>

Gianluca

