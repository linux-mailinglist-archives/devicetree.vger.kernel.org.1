Return-Path: <devicetree+bounces-277573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YP2SI+aGu2lWlQIAu9opvQ
	(envelope-from <devicetree+bounces-277573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:17:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB932C61CD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00C853075F9F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C51397E88;
	Thu, 19 Mar 2026 05:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="TL3mCY30"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29570397E86
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773897441; cv=none; b=aqzizgTTT6nt/vlCSQdxg39sE176JzgDtvFjoJvPmHiUGlEFiNqUyOowQxIp4vPSe00Wm8z3r7BuLnN9S3SJ8s7ACP5w+xmF+jjQ2gz/esSdVyI+N23j6syuHT6XajVY/um4hEBCF9dBsJLMl8NhS0odLqqpnuhwxYzulBIKV7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773897441; c=relaxed/simple;
	bh=8iSqG3x2o6WvyVuCa0n3oqyrmMUTpcn9qdWP474vCcQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sA3vfD2dj2CzTJ2dDGYzSG2TnqWjyR3ISNQhni+5COKeBE+9fHPbtwTAHBEL4Wa/8qG8mTL1zNQtMnjQk6ui90sANLEQDluWI7d8WqBR87hwtAGW7BEtaGIfYFeQBvT9VkCB37HImvV5WZRyCTcqya59gfSNqKBYohtAXwhFn68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=TL3mCY30; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <a7058f7d-b9c9-4f4b-87af-7775a2e756dd@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1773897437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LGU76WHTiNP96NxusRYJzGZVbv7nm2kMIO9LDJdid6Y=;
	b=TL3mCY30jsexb8LxKKS7BdXmuiUi4JKVRpIa0JB8v5UeeQXy9lBUKHWpQbDLkm+PKFQ/eX
	vfF1U3wVd66GmG8Ixi0YfgUCMjZDPw/KTCLtgEyJsYKdb2F4DqUnutyx9vQey0M1R/dcwf
	tl8iPIUedkPMl7jmjxjmBKghUH3hEFVPQOPwgZTMK/uW9eQWs18RyEWntcCrywduP+6uDv
	wxKQV3enFkFltIWhky+hV5JOa2KavHIZJJQAkNqeTo8t63Od07LfsyvDion6eItJSQkqqd
	u5Sm6WrB+i4AxD0XCcqVD6LpgRzJp7VHRFbXDGXeFiiktioWwKoofSsLsWJqsQ==
Date: Thu, 19 Mar 2026 02:17:03 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v5 08/13] ASoC: qcom: q6dsp: Add Senary MI2S audio
 interface support
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
 broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mailingradian@gmail.com
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309065137.949053-9-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260309065137.949053-9-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277573-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.928];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[packett.cool:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:dkim,packett.cool:email,packett.cool:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ABB932C61CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 3/9/26 3:51 AM, Srinivas Kandagatla wrote:
> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>
> Introduces support for the Senary MI2S audio interface in the Qualcomm
> q6dsp. Add new AFE port IDs for Senary MI2S RX and TX and include the
> necessary mappings in the port configuration  to allow audio routing
> over the Senary MI2S interface.
>
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>   sound/soc/qcom/qdsp6/q6afe-dai.c         |  6 +++++
>   sound/soc/qcom/qdsp6/q6afe.c             |  6 +++++
>   sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c | 29 ++++++++++++++++++++++++
>   3 files changed, 41 insertions(+)
> [..]
> diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
> index 43d877322bae..7bd40e32f758 100644
> --- a/sound/soc/qcom/qdsp6/q6afe.c
> +++ b/sound/soc/qcom/qdsp6/q6afe.c
> [..]


One chunk is missing for this file, adding it to the big switch in 
q6afe_port_get_from_id:

diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index 7bd40e32f7..40237267fd 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -1783,6 +1783,8 @@
      case AFE_PORT_ID_QUATERNARY_MI2S_TX:
      case AFE_PORT_ID_QUINARY_MI2S_RX:
      case AFE_PORT_ID_QUINARY_MI2S_TX:
+    case AFE_PORT_ID_SENARY_MI2S_RX:
+    case AFE_PORT_ID_SENARY_MI2S_TX:
          cfg_type = AFE_PARAM_ID_I2S_CONFIG;
          break;
      case AFE_PORT_ID_PRIMARY_TDM_RX ... AFE_PORT_ID_QUINARY_TDM_TX_7:


With that + adding senary to q6routing and to SoC specific sndcard,

Tested-by: Val Packett <val@packett.cool> # sm7325-motorola-dubai

(WIP device, patches coming Soon™)


Thanks,
~val


