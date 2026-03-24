Return-Path: <devicetree+bounces-279538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDNbFz8BwmkjYwQAu9opvQ
	(envelope-from <devicetree+bounces-279538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 04:13:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8BF3019B1
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 04:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F39E30C217B
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B863890F0;
	Tue, 24 Mar 2026 03:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="iTLUsJrK"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745B238838E;
	Tue, 24 Mar 2026 03:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774321666; cv=none; b=Q06N6HFPoMw7IlMyTDLXCrzL3x42IIx+Z9aJ4R9I7YJPj+schJOD2WDx6Xmpm7lhEIep+SmNnlaOoD2NkFLP6FLCNq3Fpd9ZcXxypxZHn8G5MSAWbwyOFYseyerzi74GtZakDIFVNgeoP3PbAuS+ZMgsj+nCd1cLV5we4oYaGKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774321666; c=relaxed/simple;
	bh=2B6st1g3WZ0PQOAUsZSJPA3CSrZ82gOB6l8xjOM5kps=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=He8ktv0t5esPKB8KhTgPP1WJq+bA/zodEPXR2tfdHJa9RyGbpLYoGygiT7YsGjJXPGidl5/c2fSn2CJ/x3hgW1iYeCn3P0YoRAW06pguJikFJMXUVEaZUpf03XkZ+cs9/BJxQytBsLZdoEGEyOcCwfksV6SsQtHG8x3renr+LLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=iTLUsJrK; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1774321652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qo2sYl7b6ofxlHD2SMhXRvhSH0pp3d3VlXFV9BnwRBg=;
	b=iTLUsJrKU+sUBKgtOp7A1Lk6o5sA/Yywrxa0QP8ELlXujMWEzBRETcuxN27zvlUrBU9iPL
	ZDOg18FoyqOj/PMS01Iv6EmYI3vVYlMvV1H+6sBC3lHfiaQSKBEEr09aqG/GgaW2XpVg8r
	Upb7HQRwNsSjyTbbjZzIC7lVIvxqT/o7wFzrb9ea3xTeqwDATFCxOuzVu54pL5SnKnTg2g
	SxFn8nX3BqQxIU9J0ec/gtEjkOISV9Pfl4mx1m4TLRBayKe3RhVoCjaYzLSFEx6wFkEzxy
	NMZGCC76cSrR3LcK8XBfjRRcUd7yCAQUxIM/0uWhWy5WN198BIoKqQ2D4176RQ==
Date: Tue, 24 Mar 2026 03:07:27 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <895a96b28d1a228557832ed2eb696d6781b4ec36@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v5 07/12] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "David Heidelberg" <david@ixit.cz>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, "Amir
 Dahan" <system64fumo@tuta.io>, "Christopher Brown"
 <crispybrown@gmail.com>, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bynxwz5venb6jkybamylu5dl5pmjavknoa56dkzyhgrskpgcxl@oyxqp3telscp>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
 <20251203-judyln-dts-v5-7-80c1ffca8487@postmarketos.org>
 <bynxwz5venb6jkybamylu5dl5pmjavknoa56dkzyhgrskpgcxl@oyxqp3telscp>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279538-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,ixit.cz,vger.kernel.org,lists.sr.ht,tuta.io,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,postmarketos.org:dkim,postmarketos.org:mid]
X-Rspamd-Queue-Id: BF8BF3019B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Please submit the bdf file to ath10k: https://wireless.docs.kernel.org/=
en/latest/en/users/drivers/ath10k/boardfiles.html
>=20
>=20Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>=20
>=20>=20
>=20> +};
> >=20=20
>=20>  --=20
>=20>  2.52.0
> >=20
>=20--=20
>=20With best wishes
> Dmitry
>

Sent (a while ago) https://lore.kernel.org/ath10k/c4ae548c-468d-4451-87dd=
-460b4e72945d@postmarketos.org/

