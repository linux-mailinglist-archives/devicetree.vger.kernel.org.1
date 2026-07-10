Return-Path: <devicetree+bounces-324493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oZW+NeT8UGpo9gIAu9opvQ
	(envelope-from <devicetree+bounces-324493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:08:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C3C73B9DB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:08:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fairphone.com header.s=fair header.b=HHVfu76P;
	dmarc=pass (policy=quarantine) header.from=fairphone.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324493-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324493-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4568430A88BB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 13:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F0E2765D7;
	Fri, 10 Jul 2026 13:58:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E39224677B
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 13:58:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783691922; cv=none; b=ak4kFISpINnwnxXhstvAC20rsSiFmtSO1mUP2W7zl7BL2PS5ifj9qNI2Bm8wye1uOz3dVPPdEoHXeUKFUgwzUfgNi16nIb/pDYDCEME+ESUnZ0XQYkSuPN1t1IZWzilSjXzPuwyc7wOcyPDLM/vzA7ikVwkAD0xZDDS+Yvu6wP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783691922; c=relaxed/simple;
	bh=oDMFkzxjs/KXUSaVb8duhkY5CEnHTeJPvE9VzQ6FDQc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=VfLgOcuQWkc1gg1nzkmdSwSge7ikIugd5We870cZaAIc0VVyUDhiCpLyII4amXSoPtYaSV9Sd+dN74VzmXelpem7guRoDjK78AfZn4wr3W4KXV6tDXoWjNqeLuXISBwTNRIxzflS03ZPy7JyKjZNV0pVnWDih/bjlTlM3hwhfgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=HHVfu76P; arc=none smtp.client-ip=209.85.218.44
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-c15e0c3f395so111831566b.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1783691917; x=1784296717; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=oDMFkzxjs/KXUSaVb8duhkY5CEnHTeJPvE9VzQ6FDQc=;
        b=HHVfu76PljNItpbRCBn4egmQy6/B4UiN8P92zrc5eGS0B0Q65poEDe3B2DnA7Z6Omj
         TRLYt4zjm7+5inPC/IUfNvo//2eI5r69qMPEjguJsqgWCz0/oqUm0c3NrdqfYuX/ULk2
         KkBgXb/3Fk+qsAEF0xXvZ/6cpluqpHOdwJ8/jxUa5Aa6t3zw/F/7mgJSHK+gLGs/IUfZ
         2hF+DhfL9i5fU3Tf6lYwSsn0vroM86DXkbciETq8JhqFW/45D6CbeC7wAEUTIKuNktYd
         6V6IHuCITuCDgPxye6L4kDBBwpgQRO07k3FXBQCVSbaPCAoPvg1aNvS/tNygqakVAKXv
         yHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783691917; x=1784296717;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oDMFkzxjs/KXUSaVb8duhkY5CEnHTeJPvE9VzQ6FDQc=;
        b=j9zLzXj9fRbHEi8A28fkob3XwH5He1BR1VR8RheAYtUo3OHnsAdJDjuXwZit7Joa6/
         CQ4/HmtUVZsCzC63AkMbsb4dfyPzEqREn3z/LNu3Ee0jyQlKBaIiq6JvKmbBB7ZAQBWV
         AMsmp0ipmaaLicw+pZNnOBGrPTrs3DJA+qFdhrpWjX+IEpeeHu3Gk6oexIUCnovjA0ph
         MSxv/KfvCIwpE9/vv6Pr3rApHqdB+XRMstCACJHYqaXljj766MqWIcIGHUV3e0VpFLn+
         /oIepZhN1Bbw7n+QlZLhUzQkZr2acwfmO0r9j54LGlyCRcyvQ0+iwDqBOlRdItC0dh6q
         xn6A==
X-Forwarded-Encrypted: i=1; AHgh+RrpLgLGVG9UlFfjXV/4SZLFlbEWUKT2FQou9roucg9bq4lOteu88xW2Z31K/WDWkA8jJcuxmONkq6oU@vger.kernel.org
X-Gm-Message-State: AOJu0YzRtBI4OkNvorCGi0gJMgOeCtARJ6rij22FLxGZLhMfIzYnvvrN
	0jEdFC4lDsNR6aX4BaWKu55cktJkelRgrdLdmG1/xj1gg/R6WYGHMVLl3it9vrBYp4g=
X-Gm-Gg: AfdE7ckFygQsJscegzyl0uqkz4/Uh18qac3lMRnNAxJb0m65nU7qKUTP6MDnc1vEi6Q
	kvPKkrUffjonNDRe3qc0vzi1+Q++9rOa8b/9FFUgzXIo2JujvtkLIXOuTWtiPhaL6lE6KC//Yev
	kfxfcvaqrcES8Rhng2oB7E2RQ8CuDQ8kcTxHcApvl0ihqxUKXeHryd4dFjZVWOUH8iCtW7+oyZz
	y9znJu4CS9w7GyzZ1tcRPF479kiMq9r1b83nilxfxNSrdfYsXUso7wdlXtQq5vDAJ32S5CTe+e1
	HZtJelI5RnDXyv+3QGlF9BXMVIk0WIH90uSZUg9pqT9iWGYtyFcaYWucYghJ3SkzhAI0yMs0q9d
	O5RwkMbs8JwyYstIyX/ZrMe0e5ZxBxXtVpPakl5a1UxWATiJYYtKUVzqRXVjn5XpWAYx+x9Vuiq
	7Cv0bYQpCfdQa0afNZaXtb6N3EA8KWoo+TYnB7liVQ2ibVyJWDQ3j532yMcg==
X-Received: by 2002:a17:907:990f:b0:c12:695b:8876 with SMTP id a640c23a62f3a-c15cded1355mr392545366b.5.1783691917105;
        Fri, 10 Jul 2026 06:58:37 -0700 (PDT)
Received: from localhost (144-178-202-142.static.ef-service.nl. [144.178.202.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15d3859f69sm407039066b.27.2026.07.10.06.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 06:58:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jul 2026 15:58:35 +0200
Message-Id: <DJUY0I0R3DGG.1YC9D7H4AAI0J@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/4] arm64: dts: qcom: milos: add OSM L3 node
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Georgi Djakov" <djakov@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Sibi Sankar"
 <sibi.sankar@oss.qualcomm.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Alexander Koskovich"
 <akoskovich@pm.me>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260710-milos-cpu-opp-v1-0-ae7f4b09bc77@fairphone.com>
 <20260710-milos-cpu-opp-v1-2-ae7f4b09bc77@fairphone.com>
 <bf766035-54fa-4e98-8abe-22cf0a229ffa@oss.qualcomm.com>
In-Reply-To: <bf766035-54fa-4e98-8abe-22cf0a229ffa@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-324493-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:luca.weiss@fairphone.com,m:djakov@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sibi.sankar@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:akoskovich@pm.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:from_mime,fairphone.com:email,fairphone.com:mid,fairphone.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49C3C73B9DB

Hi Konrad,

On Fri Jul 10, 2026 at 3:44 PM CEST, Konrad Dybcio wrote:
> On 7/10/26 11:22 AM, Luca Weiss wrote:
>> Add the OSC L3 Cache controller node.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> I'd suggest to squash this series into 1 big patch, without patch
> 3 applied the OSM driver will engage and perform sync_state (with
> 0 requests, so it will vote for 0/lowest) and the system
> performance will be tragic

Fair point I think, I took the structure of the patches from sm8650
which had it split this way but yes, it doesn't make too much sense in
terms of keeping system performance alive through bisection.

Will do so in v2.

Regards
Luca

>
> Konrad


