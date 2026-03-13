Return-Path: <devicetree+bounces-274893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNPPBA+vs2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:30:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E25327E250
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:30:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CCF2D30B12A9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5C4342538;
	Fri, 13 Mar 2026 06:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="SAoNVX1H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91C723ABBD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.161.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383144; cv=pass; b=NCuBX0TYFDQQ8BYfXGapjZRj9BbaMv62S3LUgpLlaPKaXZiNSRzP02R8q1QtirL4Otna0b5D8RLYgHybSwxY/Ox0ANR6Av3n5wJ5FSCQO/4lYhnob1PxXGx9ri6isOpFISNKVl2+YbkZJbDbQ2objvWHkb3uAQFjJnxAwFYqZ0U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383144; c=relaxed/simple;
	bh=HwXHsxaJxLLtdp/60RbH9yuM3ihjwFxS9V4gxjsLZns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CrZ+k19bcg1kxj+CweRXg556m4s/h706I/zNT9gk1gvN83RSvsaIXIbZ9HQ6Yv38j/wMAeLD6TBVxP/FZMlt7bstymA4iTX6kuNDBfgBSydLeVvi+FQRi2YYoAN5j47wkGphv3sFlX79e360tohwUCx0MMrX7bnYx37hUHcylgE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=SAoNVX1H; arc=pass smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-67bb17938d5so1345172eaf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773383141; cv=none;
        d=google.com; s=arc-20240605;
        b=OKbhbzr9CVMskPp3P3c8U2praJRKnpSTUzKt0yanv3XdQ1tV6aVgwm8ezbrxtX2NG8
         wRfnM5tORUZZuJZn9kVWliH+thTI7twVyal3o/Pp4zVEsR1R4nEOGNFa+7yThotLIRYf
         EpyLD7uNkfSzj+MUbLWoZaj+FZ0QM2sZLXJ9j1GM7bqrd3B00uXVOQIRMyxGSGpVrcUA
         q9wGCVBfpiZlsqxwACP202WSNxxkA0H48jqEaMSpObKxsS6WDxN/dOHGdpKnuN+KP3zH
         SRJfh2h2s8n+pMh6MilvSBOo3QZZWjCUIwTVFnPcm6V5t9bi96zb/inzN6LD9sm6ffxK
         WYUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1lv1ChK1Be6u3mlQsi10zwsgQz95EDY6vz+1pRNTi7M=;
        fh=A2GOYqe2yiYXlmxQCMjRa/sJLlHuxzIGJtdyhXvO8yU=;
        b=k15QgKO2UMr90VaUHCdiK7h1pjZFme9Go05PWhiyLUi1Z401UbmbIcs1U3PduQMfKx
         5UPsTYwAxXKiPrxeWtbaJtkYT1mWhNA6fha/rr3m0yFBE7c5eV/bCf8ivtkpC3MTD7YW
         rn5iC/IOTRbloRA3uVoDQ6Y3SBqRYIGXJGUtL6AjLdwUOCd5blDBmGLfFeGF+mpPCAKr
         WRgUBkKTlmiQ97MXo2vVdDS1MZ9aZUp+FGnkoP6RFBtr+K0qPBSRg2XAHw2J3h2ud/gC
         gm9yIz5B1iBAtOGSn66Ye1DBWQ917sFQLsNDD9K/ZatGNXkmOUsVuftddL/xNysYRiBV
         f6zQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773383141; x=1773987941; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1lv1ChK1Be6u3mlQsi10zwsgQz95EDY6vz+1pRNTi7M=;
        b=SAoNVX1HmfKUZfQzr4MXm+Fq0Y2LIoRK9INWDQGCPMP2KCWgEGTVzpcoShsH8MsR6Q
         ZYKC7CDeHyEPkD7avqnlKe0B1F62oRZRcM9wnr22rwcJgt66N/j1sgrh9eNaUylZuqU4
         EvIDwLcK0c1tJjlkA+EXkn6ChbHghhDQFdjy5CgU6xm85gLgVqLCEVfL9qK19Fqg3WVJ
         dL/1iF0Mx/yv5D0L5as6lDfTPwkTPPGnmfyoSwmrJ62OVwscVbytXA1V8qAibFCRpO7D
         1Ht9cVdpQjgTY6YhD56yMMH5DewQbRIM3IXEzATI9TgiV+E8dXyPTFPT//5sY3AGF3KJ
         OHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773383141; x=1773987941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lv1ChK1Be6u3mlQsi10zwsgQz95EDY6vz+1pRNTi7M=;
        b=neKBKVI3qKU93do4nuJPLDw9rNCBnaIt+LgMm3TpS+aHlT/2Z9thiVbHQcsE4MqIXo
         1VRQxwwHzclTPppOVcMDb6pkBLOS38rR61Xkq1ovUnVVmXoDbo38OOoREadur4f0UY8A
         2IsVpP9Vl0OTwexUn742oEdOrf+01Uaoq/BAbOfYn97I7ipjIDOrRHWc2zhK5PhLkHdl
         7O1ePbDcyMh5pf3htMPY4qZTOSBeI4abb5gtAwBWyZVPov+1vAeEemJ2Oh2D8cR3Y1fr
         d9Mb8Nu+CDKH4adP9NDA8WmPx068tB4V+lyUW4cNOsFLaSWydDk+jOhKLx6S2FpxqhIb
         C+Gw==
X-Forwarded-Encrypted: i=1; AJvYcCWsxFT2e0FRxKfkboZ1HL9ZXan4d48hB6cu4EkfnRwxEcIcbbCpIPtUXGsZyBnSPuBZjLnQUZ8ZzWZq@vger.kernel.org
X-Gm-Message-State: AOJu0YxaHTcETV4ujaljToJRS6Lm3Sj0u8fZKXmAWLlbFe4XssUrVPjH
	Z5gb11SFNtblOsFUgBivTBxzKKxPRi93vIq3t7Iy8LNcJ+ylXgjCLG0hBH0gTxo3kAgnSlXbS3P
	XijxnqVfc6VliW+nm3n9oeovvhlRsVx6+eSD7OysKTg==
X-Gm-Gg: ATEYQzwDrkv6MRK6SORXhCtKIySYvtZ76Yn042EiaZioboxG6Hycb1MjiX/Wx6JI7kr
	HXx0Ak/xLubQJwNigU7jOwX7RepFVoqaybzkgEU73gUDSq/5qasZkdCBcYjMdYumEkY8H/Xd10t
	/gURUSwH6mZ8onz6DwlSjzmQZO8+06vGkXFK9Qa0aLj5PQPmd2bZhHG7mWtpP8SUB6W3M6xmnLt
	k1cBFVErzQ95zDPJMc0z/VEs5WuKYDu9Gj5J/UhS+urcRCDOnJT4vXW1JmdRo4p0lqv5OcC/tzk
	MKLC0YAerA==
X-Received: by 2002:a05:6820:169e:b0:677:a19a:55b with SMTP id
 006d021491bc7-67bdaa8fa72mr1455444eaf.72.1773383140778; Thu, 12 Mar 2026
 23:25:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CABvJ_xibk20PbZqk0aUwQ8tsSxte8txe=CV+PMnLnD-ojksv8Q@mail.gmail.com>
In-Reply-To: <CABvJ_xibk20PbZqk0aUwQ8tsSxte8txe=CV+PMnLnD-ojksv8Q@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 13 Mar 2026 14:25:29 +0800
X-Gm-Features: AaiRm53wQ2dMf8yly9LJKQQq34H5hIlI6MOnbXQQEbUZ46QlnFFShdCqYSvoNcw
Message-ID: <CABvJ_xjrUKyGUkbzhAX6DwwwZ3dJU7KThrO2Tz_MKL4T1Y+KDA@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] rvtrace: Add functions to create/destroy a trace
 component path
To: Anup Patel <anup.patel@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Liang Kan <kan.liang@linux.intel.com>, 
	Mayuresh Chitale <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <andrew.jones@oss.qualcomm.com>, 
	Sunil V L <sunilvl@oss.qualcomm.com>, linux-riscv <linux-riscv@lists.infradead.org>, 
	devicetree@vger.kernel.org, 
	"linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>, 
	Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274893-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,linuxfoundation.org,linux.intel.com,google.com,ghiti.fr,infradead.org,redhat.com,arm.com,intel.com,gmail.com,brainfault.org,linux.dev,oss.qualcomm.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.chen@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 7E25327E250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>
> Trace needs to be configured on a chain of trace components which are
> connected to each other. These chain of components is also referred
> to as trace component path. Add functions to create/destroy a trace
> component path which will be later used by RISC-V trace perf support.
>
> Co-developed-by: Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
> Signed-off-by: Mayuresh Chitale <mayuresh.chitale@oss.qualcomm.com>
> Signed-off-by: Anup Patel <anup.patel@oss.qualcomm.com>
> ---
>  drivers/hwtracing/rvtrace/rvtrace-core.c | 223 +++++++++++++++++++++++
>  include/linux/rvtrace.h                  |  43 ++++-
>  2 files changed, 264 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c
> b/drivers/hwtracing/rvtrace/rvtrace-core.c
> index d69c2236493a..5f40bad215e0 100644
> --- a/drivers/hwtracing/rvtrace/rvtrace-core.c
> +++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
> @@ -229,6 +229,53 @@ int rvtrace_reset_component(struct
> rvtrace_platform_data *pdata)
>  }
>  EXPORT_SYMBOL_GPL(rvtrace_reset_component);
>
> +static int __rvtrace_walk_output_components(struct rvtrace_component *comp,
> +    bool *stop, void *priv,
> +    int (*fn)(struct rvtrace_component *comp, bool *stop,
> +      struct rvtrace_connection *stop_conn,
> +      void *priv))
> +{
> + struct rvtrace_connection *conn, *stop_conn = NULL;
> + struct rvtrace_platform_data *pdata = comp->pdata;
> + int i, ret;
> +
> + for (i = 0; i < pdata->nr_outconns; i++) {
> + conn = pdata->outconns[i];
> + ret = __rvtrace_walk_output_components(conn->dest_comp, stop, priv, fn);
> + if (ret)
> + return ret;
> + if (*stop) {
> + stop_conn = conn;
> + break;
> + }
> + }
> +
> + ret = fn(comp, stop, stop_conn, priv);
> + if (ret)
> + return ret;
> +
> + return 0;
> +}
> +
> +int rvtrace_walk_output_components(struct rvtrace_component *comp, void *priv,
> +   int (*fn)(struct rvtrace_component *comp, bool *stop,
> +     struct rvtrace_connection *stop_conn,
> +     void *priv))
> +{
> + bool stop = false;
> + int ret;
> +
> + if (!comp || !fn)
> + return -EINVAL;
> +
> + mutex_lock(&rvtrace_mutex);
> + ret = __rvtrace_walk_output_components(comp, &stop, priv, fn);
> + mutex_unlock(&rvtrace_mutex);
> +
> + return ret;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_walk_output_components);
> +
>  struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu)
>  {
>   if (!cpu_present(cpu))
> @@ -452,6 +499,182 @@ void rvtrace_unregister_component(struct
> rvtrace_component *comp)
>  }
>  EXPORT_SYMBOL_GPL(rvtrace_unregister_component);
>
> +struct rvtrace_path_node {
> + struct list_head head;
> + struct rvtrace_component *comp;
> + struct rvtrace_connection *conn;
> +};
> +
> +struct rvtrace_component *rvtrace_path_source(struct rvtrace_path *path)
> +{
> + struct rvtrace_path_node *node;
> +
> + node = list_first_entry(&path->comp_list, struct rvtrace_path_node, head);
> + return node->comp;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_path_source);
> +
> +struct rvtrace_component *rvtrace_path_sink(struct rvtrace_path *path)
> +{
> + struct rvtrace_path_node *node;
> +
> + node = list_last_entry(&path->comp_list, struct rvtrace_path_node, head);
> + return node->comp;
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_path_sink);
> +
> +static int rvtrace_assign_trace_id(struct rvtrace_path *path)
> +{
> + const struct rvtrace_driver *rtdrv;
> + struct rvtrace_component *comp;
> + struct rvtrace_path_node *node;
> + int trace_id;
> +
> + list_for_each_entry(node, &path->comp_list, head) {
> + comp = node->comp;
> + rtdrv = to_rvtrace_driver(comp->dev.driver);
> +
> + if (!rtdrv->get_trace_id)
> + continue;
> +
> + trace_id = rtdrv->get_trace_id(comp, path->mode);
> + if (trace_id > 0) {
> + path->trace_id = trace_id;
> + return 0;
> + } else if (trace_id < 0) {
> + return trace_id;
> + }
> + }
> +
> + return 0;
> +}
> +
> +static void rvtrace_unassign_trace_id(struct rvtrace_path *path)
> +{
> + const struct rvtrace_driver *rtdrv;
> + struct rvtrace_component *comp;
> + struct rvtrace_path_node *node;
> +
> + list_for_each_entry(node, &path->comp_list, head) {
> + comp = node->comp;
> + rtdrv = to_rvtrace_driver(comp->dev.driver);
> +
> + if (!rtdrv->put_trace_id)
> + continue;
> +
> + rtdrv->put_trace_id(comp, path->mode, path->trace_id);
> + }
> +}
> +
> +static bool rvtrace_path_ready(struct rvtrace_path *path)
> +{
> + struct rvtrace_path_node *node;
> +
> + list_for_each_entry(node, &path->comp_list, head) {
> + if (!node->comp->ready)
> + return false;
> + }
> +
> + return true;
> +}
> +
> +struct build_path_walk_priv {
> + struct rvtrace_path *path;
> + struct rvtrace_component *sink;
> +};
> +
> +static int build_path_walk_fn(struct rvtrace_component *comp, bool *stop,
> +      struct rvtrace_connection *stop_conn,
> +      void *priv)
> +{
> + struct build_path_walk_priv *ppriv = priv;
> + struct rvtrace_path *path = ppriv->path;
> + struct rvtrace_path_node *node;
> +
> + if ((!ppriv->sink && rvtrace_is_sink(comp->pdata)) ||
> +    (ppriv->sink && ppriv->sink == comp))
> + *stop = true;
> +
> + if (*stop) {
> + node = kzalloc(sizeof(*node), GFP_KERNEL);
> + if (!path)

Hi Anup,
It looks like there's a typo here. I believe this should be if (!node)
instead of if (!path).

> + return -ENOMEM;
> + INIT_LIST_HEAD(&node->head);
> + rvtrace_get_component(comp);
> + node->comp = comp;
> + node->conn = stop_conn;
> + list_add(&node->head, &path->comp_list);
> + }
> +
> + return 0;
> +}
> +
> +static void rvtrace_release_path_nodes(struct rvtrace_path *path)
> +{
> + struct rvtrace_path_node *node, *node1;
> +
> + list_for_each_entry_safe(node, node1, &path->comp_list, head) {
> + list_del(&node->head);
> + rvtrace_put_component(node->comp);
> + kfree(node);
> + }
> +}
> +
> +struct rvtrace_path *rvtrace_create_path(struct rvtrace_component *source,
> + struct rvtrace_component *sink,
> + enum rvtrace_component_mode mode)
> +{
> + struct build_path_walk_priv priv;
> + struct rvtrace_path *path;
> + int ret = 0;
> +
> + if (!source || mode >= RVTRACE_COMPONENT_MODE_MAX) {
> + ret = -EINVAL;
> + goto err_out;
> + }
> +
> + path = kzalloc(sizeof(*path), GFP_KERNEL);
> + if (!path) {
> + ret = -ENOMEM;
> + goto err_out;
> + }
> + INIT_LIST_HEAD(&path->comp_list);
> + path->mode = mode;
> + path->trace_id = RVTRACE_INVALID_TRACE_ID;
> +
> + priv.path = path;
> + priv.sink = sink;
> + ret = rvtrace_walk_output_components(source, &priv, build_path_walk_fn);
> + if (ret < 0)
> + goto err_release_path_nodes;
> +
> + if (!rvtrace_path_ready(path)) {
> + ret = -EOPNOTSUPP;
> + goto err_release_path_nodes;
> + }
> +
> + ret = rvtrace_assign_trace_id(path);
> + if (ret < 0)
> + goto err_release_path_nodes;
> +
> + return path;
> +
> +err_release_path_nodes:
> + rvtrace_release_path_nodes(path);
> + kfree(path);
> +err_out:
> + return ERR_PTR(ret);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_create_path);
> +
> +void rvtrace_destroy_path(struct rvtrace_path *path)
> +{
> + rvtrace_unassign_trace_id(path);
> + rvtrace_release_path_nodes(path);
> + kfree(path);
> +}
> +EXPORT_SYMBOL_GPL(rvtrace_destroy_path);
> +
>  int __rvtrace_register_driver(struct module *owner, struct
> rvtrace_driver *rtdrv)
>  {
>   rtdrv->driver.owner = owner;
> diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
> index d6be6e3cc10f..00b63fa22da9 100644
> --- a/include/linux/rvtrace.h
> +++ b/include/linux/rvtrace.h
> @@ -8,6 +8,8 @@
>
>  #include <linux/device.h>
>  #include <linux/io.h>
> +#include <linux/limits.h>
> +#include <linux/list.h>
>  #include <linux/platform_device.h>
>  #include <linux/property.h>
>  #include <linux/types.h>
> @@ -72,6 +74,12 @@ enum rvtrace_component_impid {
>   RVTRACE_COMPONENT_IMPID_MAX
>  };
>
> +/* Supported usage modes for RISC-V trace components */
> +enum rvtrace_component_mode {
> + RVTRACE_COMPONENT_MODE_PERF,
> + RVTRACE_COMPONENT_MODE_MAX
> +};
> +
>  /**
>   * struct rvtrace_connection - Representation of a physical connection between
>   * two RISC-V trace components.
> @@ -239,6 +247,10 @@ int rvtrace_enable_component(struct
> rvtrace_platform_data *pdata);
>  int rvtrace_disable_component(struct rvtrace_platform_data *pdata);
>  int rvtrace_reset_component(struct rvtrace_platform_data *pdata);
>
> +int rvtrace_walk_output_components(struct rvtrace_component *comp, void *priv,
> +   int (*fn)(struct rvtrace_component *comp, bool *stop,
> +     struct rvtrace_connection *stop_conn,
> +     void *priv));
>  struct rvtrace_component *rvtrace_cpu_source(unsigned int cpu);
>
>  struct rvtrace_component *rvtrace_register_component(enum
> rvtrace_component_type type,
> @@ -246,17 +258,44 @@ struct rvtrace_component
> *rvtrace_register_component(enum rvtrace_component_type
>       struct rvtrace_platform_data *pdata);
>  void rvtrace_unregister_component(struct rvtrace_component *comp);
>
> +/**
> + * struct rvtrace_path - Representation of a RISC-V trace path from
> source to sink
> + * @comp_list: List of RISC-V trace components in the path
> + * @mode:      Usage mode for RISC-V trace components
> + * @trace_id:  ID of the trace source (typically hart id)
> + */
> +struct rvtrace_path {
> + struct list_head comp_list;
> + enum rvtrace_component_mode mode;
> + u32 trace_id;
> +#define RVTRACE_INVALID_TRACE_ID 0
> +};
> +
> +struct rvtrace_component *rvtrace_path_source(struct rvtrace_path *path);
> +struct rvtrace_component *rvtrace_path_sink(struct rvtrace_path *path);
> +struct rvtrace_path *rvtrace_create_path(struct rvtrace_component *source,
> + struct rvtrace_component *sink,
> + enum rvtrace_component_mode mode);
> +void rvtrace_destroy_path(struct rvtrace_path *path);
> +
>  /**
>   * struct rvtrace_driver - Representation of a RISC-V trace driver
>   * id_table: Table to match components handled by the driver
> - * probe:    Driver probe() function
> - * remove:   Driver remove() function
> + * probe:        Driver probe() function
> + * remove:       Driver remove() function
> + * get_trace_id: Get/allocate a trace ID
> + * put_trace_id: Put/free a trace ID
>   * driver:   Device driver instance
>   */
>  struct rvtrace_driver {
>   const struct rvtrace_component_id *id_table;
>   int (*probe)(struct rvtrace_component *comp);
>   void (*remove)(struct rvtrace_component *comp);
> + int (*get_trace_id)(struct rvtrace_component *comp,
> + enum rvtrace_component_mode mode);
> + void (*put_trace_id)(struct rvtrace_component *comp,
> + enum rvtrace_component_mode mode,
> + u32 trace_id);
>   struct device_driver driver;
>  };

