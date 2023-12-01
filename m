Return-Path: <devicetree+bounces-20863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6218010D8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 18:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B6731C20FC2
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B554E624;
	Fri,  1 Dec 2023 17:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bJSI6nE/"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBC30131;
	Fri,  1 Dec 2023 09:11:42 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E10C9240007;
	Fri,  1 Dec 2023 17:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701450701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lwpjtsb4vZRwM2eK/2Qxes8YTGtiPBW1F4mvBxoQ974=;
	b=bJSI6nE/WN/p9onyAoGJxA9IgpJ/ir9a+vhgPSqSwgCEOH36CNdeS+ghoo4PKkp+cg4toI
	180lv6wqy4m9TAsnz/DMs51NCv3Rk/kmwwo5Fu91Bbe2F1VpOtxY6SWoco/3dEKjjDBNvU
	2zYx/Yt87QMy0YIx6zKRv4y00B3QcHD1mM2lqcyhWRBkJvaw1LTKOo7CFS5UmIQj6v+Jou
	ap+c7GvyYzEY3wDuRr2ZehZJJm4hF/xXLKwfAQgwY4P6mXZ7SsbNukPqTvm/aW1n3o8UJG
	tJekVAzU7EZjdHtTezmJiBmD3PhhkIhWh2b5cUu+HkKaAnzGC7ipHbsMhyRjjg==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Fri, 01 Dec 2023 18:10:28 +0100
Subject: [PATCH net-next v2 6/8] netlink: specs: Expand the pse netlink
 command with PoE interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231201-feature_poe-v2-6-56d8cac607fa@bootlin.com>
References: <20231201-feature_poe-v2-0-56d8cac607fa@bootlin.com>
In-Reply-To: <20231201-feature_poe-v2-0-56d8cac607fa@bootlin.com>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, 
 Luis Chamberlain <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 devicetree@vger.kernel.org, Dent Project <dentproject@linuxfoundation.org>, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.12.4
X-GND-Sasl: kory.maincent@bootlin.com

Add the PoE pse attributes prefix to be able to use PoE interface.

Example usage:
./ynl/cli.py --spec netlink/specs/ethtool.yaml --no-schema --do pse-get \
             --json '{"header":{"dev-name":"eth0"}}'
{'header': {'dev-index': 4, 'dev-name': 'eth0'},
 'c33-pse-admin-state': 3,
 'c33-pse-pw-d-status': 4}

./ynl/cli.py --spec netlink/specs/ethtool.yaml --no-schema --do pse-set \
             --json '{"header":{"dev-name":"eth0"},
		     "c33-pse-admin-control":3}'

Update the ethtool generated code accordingly.

Sponsored-by: Dent Project <dentproject@linuxfoundation.org>
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---

Changes in v2:
- Follow the "c33" PoE prefix naming change.
- Add the ethtool auto generated code.
---
 Documentation/netlink/specs/ethtool.yaml | 15 +++++++++++++++
 tools/net/ynl/generated/ethtool-user.c   | 24 +++++++++++++++++++++++
 tools/net/ynl/generated/ethtool-user.h   | 33 ++++++++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index e1bf75099264..6870106bf50c 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -889,6 +889,18 @@ attribute-sets:
         name: podl-pse-pw-d-status
         type: u32
         name-prefix: ethtool-a-
+      -
+        name: c33-pse-admin-state
+        type: u32
+        name-prefix: ethtool-a-
+      -
+        name: c33-pse-admin-control
+        type: u32
+        name-prefix: ethtool-a-
+      -
+        name: c33-pse-pw-d-status
+        type: u32
+        name-prefix: ethtool-a-
   -
     name: rss
     attributes:
@@ -1571,6 +1583,9 @@ operations:
             - podl-pse-admin-state
             - podl-pse-admin-control
             - podl-pse-pw-d-status
+            - c33-pse-admin-state
+            - c33-pse-admin-control
+            - c33-pse-pw-d-status
       dump: *pse-get-op
     -
       name: pse-set
diff --git a/tools/net/ynl/generated/ethtool-user.c b/tools/net/ynl/generated/ethtool-user.c
index 922bbd07ee95..bcf97b46ed6a 100644
--- a/tools/net/ynl/generated/ethtool-user.c
+++ b/tools/net/ynl/generated/ethtool-user.c
@@ -610,6 +610,9 @@ struct ynl_policy_attr ethtool_pse_policy[ETHTOOL_A_PSE_MAX + 1] = {
 	[ETHTOOL_A_PODL_PSE_ADMIN_STATE] = { .name = "podl-pse-admin-state", .type = YNL_PT_U32, },
 	[ETHTOOL_A_PODL_PSE_ADMIN_CONTROL] = { .name = "podl-pse-admin-control", .type = YNL_PT_U32, },
 	[ETHTOOL_A_PODL_PSE_PW_D_STATUS] = { .name = "podl-pse-pw-d-status", .type = YNL_PT_U32, },
+	[ETHTOOL_A_C33_PSE_ADMIN_STATE] = { .name = "c33-pse-admin-state", .type = YNL_PT_U32, },
+	[ETHTOOL_A_C33_PSE_ADMIN_CONTROL] = { .name = "c33-pse-admin-control", .type = YNL_PT_U32, },
+	[ETHTOOL_A_C33_PSE_PW_D_STATUS] = { .name = "c33-pse-pw-d-status", .type = YNL_PT_U32, },
 };
 
 struct ynl_policy_nest ethtool_pse_nest = {
@@ -5320,6 +5323,21 @@ int ethtool_pse_get_rsp_parse(const struct nlmsghdr *nlh, void *data)
 				return MNL_CB_ERROR;
 			dst->_present.podl_pse_pw_d_status = 1;
 			dst->podl_pse_pw_d_status = mnl_attr_get_u32(attr);
+		} else if (type == ETHTOOL_A_C33_PSE_ADMIN_STATE) {
+			if (ynl_attr_validate(yarg, attr))
+				return MNL_CB_ERROR;
+			dst->_present.c33_pse_admin_state = 1;
+			dst->c33_pse_admin_state = mnl_attr_get_u32(attr);
+		} else if (type == ETHTOOL_A_C33_PSE_ADMIN_CONTROL) {
+			if (ynl_attr_validate(yarg, attr))
+				return MNL_CB_ERROR;
+			dst->_present.c33_pse_admin_control = 1;
+			dst->c33_pse_admin_control = mnl_attr_get_u32(attr);
+		} else if (type == ETHTOOL_A_C33_PSE_PW_D_STATUS) {
+			if (ynl_attr_validate(yarg, attr))
+				return MNL_CB_ERROR;
+			dst->_present.c33_pse_pw_d_status = 1;
+			dst->c33_pse_pw_d_status = mnl_attr_get_u32(attr);
 		}
 	}
 
@@ -5426,6 +5444,12 @@ int ethtool_pse_set(struct ynl_sock *ys, struct ethtool_pse_set_req *req)
 		mnl_attr_put_u32(nlh, ETHTOOL_A_PODL_PSE_ADMIN_CONTROL, req->podl_pse_admin_control);
 	if (req->_present.podl_pse_pw_d_status)
 		mnl_attr_put_u32(nlh, ETHTOOL_A_PODL_PSE_PW_D_STATUS, req->podl_pse_pw_d_status);
+	if (req->_present.c33_pse_admin_state)
+		mnl_attr_put_u32(nlh, ETHTOOL_A_C33_PSE_ADMIN_STATE, req->c33_pse_admin_state);
+	if (req->_present.c33_pse_admin_control)
+		mnl_attr_put_u32(nlh, ETHTOOL_A_C33_PSE_ADMIN_CONTROL, req->c33_pse_admin_control);
+	if (req->_present.c33_pse_pw_d_status)
+		mnl_attr_put_u32(nlh, ETHTOOL_A_C33_PSE_PW_D_STATUS, req->c33_pse_pw_d_status);
 
 	err = ynl_exec(ys, nlh, &yrs);
 	if (err < 0)
diff --git a/tools/net/ynl/generated/ethtool-user.h b/tools/net/ynl/generated/ethtool-user.h
index a2c69264c021..5bcb9d5f5c89 100644
--- a/tools/net/ynl/generated/ethtool-user.h
+++ b/tools/net/ynl/generated/ethtool-user.h
@@ -4593,12 +4593,18 @@ struct ethtool_pse_get_rsp {
 		__u32 podl_pse_admin_state:1;
 		__u32 podl_pse_admin_control:1;
 		__u32 podl_pse_pw_d_status:1;
+		__u32 c33_pse_admin_state:1;
+		__u32 c33_pse_admin_control:1;
+		__u32 c33_pse_pw_d_status:1;
 	} _present;
 
 	struct ethtool_header header;
 	__u32 podl_pse_admin_state;
 	__u32 podl_pse_admin_control;
 	__u32 podl_pse_pw_d_status;
+	__u32 c33_pse_admin_state;
+	__u32 c33_pse_admin_control;
+	__u32 c33_pse_pw_d_status;
 };
 
 void ethtool_pse_get_rsp_free(struct ethtool_pse_get_rsp *rsp);
@@ -4670,12 +4676,18 @@ struct ethtool_pse_set_req {
 		__u32 podl_pse_admin_state:1;
 		__u32 podl_pse_admin_control:1;
 		__u32 podl_pse_pw_d_status:1;
+		__u32 c33_pse_admin_state:1;
+		__u32 c33_pse_admin_control:1;
+		__u32 c33_pse_pw_d_status:1;
 	} _present;
 
 	struct ethtool_header header;
 	__u32 podl_pse_admin_state;
 	__u32 podl_pse_admin_control;
 	__u32 podl_pse_pw_d_status;
+	__u32 c33_pse_admin_state;
+	__u32 c33_pse_admin_control;
+	__u32 c33_pse_pw_d_status;
 };
 
 static inline struct ethtool_pse_set_req *ethtool_pse_set_req_alloc(void)
@@ -4731,6 +4743,27 @@ ethtool_pse_set_req_set_podl_pse_pw_d_status(struct ethtool_pse_set_req *req,
 	req->_present.podl_pse_pw_d_status = 1;
 	req->podl_pse_pw_d_status = podl_pse_pw_d_status;
 }
+static inline void
+ethtool_pse_set_req_set_c33_pse_admin_state(struct ethtool_pse_set_req *req,
+					    __u32 c33_pse_admin_state)
+{
+	req->_present.c33_pse_admin_state = 1;
+	req->c33_pse_admin_state = c33_pse_admin_state;
+}
+static inline void
+ethtool_pse_set_req_set_c33_pse_admin_control(struct ethtool_pse_set_req *req,
+					      __u32 c33_pse_admin_control)
+{
+	req->_present.c33_pse_admin_control = 1;
+	req->c33_pse_admin_control = c33_pse_admin_control;
+}
+static inline void
+ethtool_pse_set_req_set_c33_pse_pw_d_status(struct ethtool_pse_set_req *req,
+					    __u32 c33_pse_pw_d_status)
+{
+	req->_present.c33_pse_pw_d_status = 1;
+	req->c33_pse_pw_d_status = c33_pse_pw_d_status;
+}
 
 /*
  * Set Power Sourcing Equipment params.

-- 
2.25.1


