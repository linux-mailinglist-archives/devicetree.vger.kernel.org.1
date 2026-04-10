Return-Path: <devicetree+bounces-286511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EgDO8n62Gk5kggAu9opvQ
	(envelope-from <devicetree+bounces-286511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 15:27:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 659233D8153
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 15:27:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38448301F4BE
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 13:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96373BE646;
	Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx87XWUI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A3E390231;
	Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775827653; cv=none; b=MRNwtYm+McndhUEHmk732oTiNOU3cY9ZmI9oYSY6vAmPVWtLSytBRIR1PwMdhlNHlVikMpbuovUgOyu01/6X6iO0B5J27tc0hSid7SK0Ba66jJu1naTmo+f6RXlE/Silt02a3WU0M4zSoXupDMjjFPpJrbVXWuTRrospWrQ+Z+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775827653; c=relaxed/simple;
	bh=O+PLr5tYJFjlOU/vYSNSO13DG+GfWhz3Q71wmBZNamo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Le0cZKf927qZOt0VfqkadplG9tho6ZvA8wzNezeNDs26kROUYK4XZJaJbPVgM8i+MK9Zk5pJC+RPqErI7D5VodfnzC3c5rOtS/qIXlCzPmfVpWo7nZFuY1WjENo/xKsZswiYZACgHpV8tvUSxHBJ/XmKCiHQYKP9Ck3EJHnybDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx87XWUI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3062AC19421;
	Fri, 10 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775827653;
	bh=O+PLr5tYJFjlOU/vYSNSO13DG+GfWhz3Q71wmBZNamo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yx87XWUIMyy0WX88yUR4U5+g+glqNsKenI6T+o2+k1gidN27Z/5310yB/orhH05EP
	 L998kybYQ3uvebi9rrzaTfo3db1xQ5m5KNbQTGozJpTgb/Gfd89XxQK4B/0isdYzPF
	 mOOv1GJVI9ad5R/JpDPnerPykZvkrZCAR5i7kcSKURSAFCDIeBc0X6AZYaWl1l4Giy
	 zKfNpbRiXrrmASZqmNV+oQXc5y/9K+qeJZGoE7EUt9/D2X0iChzPWMjMUgyUd+s1AQ
	 M/tkYrjGh/gbWUcoTKrH3JOzTWPbKt3wC2KsH2TbD8k6KvW8GQfDbgb5maJmmKV1eY
	 wB4oOEuetwTXw==
Date: Fri, 10 Apr 2026 08:27:31 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v3 1/2] dt-bindings: sram: Document qcom,milos-imem
Message-ID: <177582764925.441661.4323143601044763082.robh@kernel.org>
References: <20260410-milos-imem-v3-0-d215385fa5ab@fairphone.com>
 <20260410-milos-imem-v3-1-d215385fa5ab@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410-milos-imem-v3-1-d215385fa5ab@fairphone.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-286511-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 659233D8153
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 10 Apr 2026 09:31:06 +0200, Luca Weiss wrote:
> Add compatible for Milos SoC IMEM.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


