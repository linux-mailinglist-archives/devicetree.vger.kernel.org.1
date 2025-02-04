Return-Path: <devicetree+bounces-142824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1714BA26A74
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 04:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B0773A6F4A
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 03:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297B31993B2;
	Tue,  4 Feb 2025 03:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="aHC6Z59Q"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9D3156653
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 03:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738638208; cv=none; b=j7oNYqXoge3uPnAO4tNi2yL3aysWSSN3TIeW9twfVByGVy8YIyJ4HuGSYZtOdfWNTL8ElqpQ08Jej2vih4t9cAiWc4NhrbUuOPYPDFQTpqXduZj5JCGIMwia4FEeHf56WlkHsrzj/hlqd8Qg7gRtv1OEHVcsr2iFmodSFE6toF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738638208; c=relaxed/simple;
	bh=gqWzk2vJFqCFmLA9fBt/eppweJz0sIn0vkRCKS8H3x8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LvkTzxILBiAXaxwKdAlW8vKz2XpDFydACqhtinOdNrKsPdqKOLEdUsenZTMHwcIb+JxDjfKPBWSPMLyCb+CYOpTf93QkerXkfplFAb4b9ER8hd6nMEarGyE364MF52enxT+7q8ZCe7cpAg6FgSkNsrnnXcrlVAYJv0qF9WM1fv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=aHC6Z59Q; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 804192C0477;
	Tue,  4 Feb 2025 16:03:24 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1738638204;
	bh=4NP4DlDT6DNAoR+WN/+6tvYrmdcjTr4+ZaUipXuaX48=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aHC6Z59Qe1rK2KHSzVSZ1hSspEhiJFmquv+BunCyq0Qt7CeGnGbcgB9VRMXEGYiZ4
	 gbcQMSeUcjTDvfQ4LtxYNa4QJNxO6lVoeEtS4+j1C4qzTpKUpEBwZl33WRsoUqXkrx
	 KAR1PC3rldazLQaGV+OJja9B7vyONrC0b9XjfrMgr9vVopoAF6K7LnW7g4smmvD6BE
	 /9P9U67nrLYDaPDkGJBi64mYNMPmTFMuF2yFLvKRwnvzg0FoARIF5ddkE3B8KbJ4Yz
	 kFw6fTcupYoMc7gGw1HRzIli48YBatpgpwv1MMHwxNa3uL9Wm+PGgBORl1qN5qPksY
	 R6W1lf3mPOemA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B67a1837c0000>; Tue, 04 Feb 2025 16:03:24 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 480E113EE36;
	Tue,  4 Feb 2025 16:03:24 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 437702804B6; Tue,  4 Feb 2025 16:03:24 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	tsbogend@alpha.franken.de,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	sander@svanheule.net,
	daniel@makrotopia.org,
	markus.stockhausen@gmx.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH net-next v6 4/6] net: mdio: Add RTL9300 MDIO driver
Date: Tue,  4 Feb 2025 16:02:47 +1300
Message-ID: <20250204030249.1965444-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250204030249.1965444-1-chris.packham@alliedtelesis.co.nz>
References: <20250204030249.1965444-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=QNvLRRLL c=1 sm=1 tr=0 ts=67a1837c a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T2h4t0Lz3GQA:10 a=K5f48OwZufGdpAPWNvYA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add a driver for the MDIO controller on the RTL9300 family of Ethernet
switches with integrated SoC. There are 4 physical SMI interfaces on the
RTL9300 however access is done using the switch ports. The driver takes
the MDIO bus hierarchy from the DTS and uses this to configure the
switch ports so they are associated with the correct PHY. This mapping
is also used when dealing with software requests from phylib.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v6:
    - Parse port->phy mapping from devicetree removing the need for the
      realtek,port property
    - Remove erroneous code dealing with SMI_POLL_CTRL. When actually
      implemented this stops the LED unit from updating correctly.
    Changes in v5:
    - Reword out of date comment
    - Use GENMASK/FIELD_PREP where appropriate
    - Introduce port validity bitmap.
    - Use more obvious names for PHY_CTRL_READ/WRITE and
      PHY_CTRL_TYPE_C45/C22
    Changes in v4:
    - rename to realtek-rtl9300
    - s/realtek_/rtl9300_/
    - add locking to support concurrent access
    - The dtbinding now represents the MDIO bus hierarchy so we consume t=
his
      information and use it to configure the switch port to MDIO bus+add=
r.
    Changes in v3:
    - Fix (another) off-by-one error
    Changes in v2:
    - Add clause 22 support
    - Remove commented out code
    - Formatting cleanup
    - Set MAX_PORTS correctly for MDIO interface
    - Fix off-by-one error in pn check

 drivers/net/mdio/Kconfig                |   7 +
 drivers/net/mdio/Makefile               |   1 +
 drivers/net/mdio/mdio-realtek-rtl9300.c | 472 ++++++++++++++++++++++++
 3 files changed, 480 insertions(+)
 create mode 100644 drivers/net/mdio/mdio-realtek-rtl9300.c

diff --git a/drivers/net/mdio/Kconfig b/drivers/net/mdio/Kconfig
index 4a7a303be2f7..058fcdaf6c18 100644
--- a/drivers/net/mdio/Kconfig
+++ b/drivers/net/mdio/Kconfig
@@ -185,6 +185,13 @@ config MDIO_IPQ8064
 	  This driver supports the MDIO interface found in the network
 	  interface units of the IPQ8064 SoC
=20
+config MDIO_REALTEK_RTL9300
+	tristate "Realtek RTL9300 MDIO interface support"
+	depends on MACH_REALTEK_RTL || COMPILE_TEST
+	help
+	  This driver supports the MDIO interface found in the Realtek
+	  RTL9300 family of Ethernet switches with integrated SoC.
+
 config MDIO_REGMAP
 	tristate
 	help
diff --git a/drivers/net/mdio/Makefile b/drivers/net/mdio/Makefile
index 1015f0db4531..c23778e73890 100644
--- a/drivers/net/mdio/Makefile
+++ b/drivers/net/mdio/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_MDIO_MOXART)		+=3D mdio-moxart.o
 obj-$(CONFIG_MDIO_MSCC_MIIM)		+=3D mdio-mscc-miim.o
 obj-$(CONFIG_MDIO_MVUSB)		+=3D mdio-mvusb.o
 obj-$(CONFIG_MDIO_OCTEON)		+=3D mdio-octeon.o
+obj-$(CONFIG_MDIO_REALTEK_RTL9300)	+=3D mdio-realtek-rtl9300.o
 obj-$(CONFIG_MDIO_REGMAP)		+=3D mdio-regmap.o
 obj-$(CONFIG_MDIO_SUN4I)		+=3D mdio-sun4i.o
 obj-$(CONFIG_MDIO_THUNDER)		+=3D mdio-thunder.o
diff --git a/drivers/net/mdio/mdio-realtek-rtl9300.c b/drivers/net/mdio/m=
dio-realtek-rtl9300.c
new file mode 100644
index 000000000000..177163af1a1b
--- /dev/null
+++ b/drivers/net/mdio/mdio-realtek-rtl9300.c
@@ -0,0 +1,472 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MDIO controller for RTL9300 switches with integrated SoC.
+ *
+ * The MDIO communication is abstracted by the switch. At the software l=
evel
+ * communication uses the switch port to address the PHY. We work out th=
e
+ * mapping based on the MDIO bus described in device tree and the realte=
k,port
+ * property.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bitmap.h>
+#include <linux/bits.h>
+#include <linux/cleanup.h>
+#include <linux/find.h>
+#include <linux/mdio.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mod_devicetable.h>
+#include <linux/mutex.h>
+#include <linux/of_mdio.h>
+#include <linux/phy.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+#define SMI_GLB_CTRL			0xca00
+#define   GLB_CTRL_INTF_SEL(intf)	BIT(16 + (intf))
+#define SMI_PORT0_15_POLLING_SEL	0xca08
+#define SMI_ACCESS_PHY_CTRL_0		0xcb70
+#define SMI_ACCESS_PHY_CTRL_1		0xcb74
+#define   PHY_CTRL_WRITE		BIT(2)
+#define   PHY_CTRL_READ			0
+#define   PHY_CTRL_TYPE_C45		BIT(1)
+#define   PHY_CTRL_TYPE_C22		0
+#define   PHY_CTRL_CMD			BIT(0)
+#define   PHY_CTRL_FAIL			BIT(25)
+#define SMI_ACCESS_PHY_CTRL_2		0xcb78
+#define SMI_ACCESS_PHY_CTRL_3		0xcb7c
+#define SMI_PORT0_5_ADDR_CTRL		0xcb80
+
+#define MAX_PORTS       28
+#define MAX_SMI_BUSSES  4
+#define MAX_SMI_ADDR	0x1f
+
+struct rtl9300_mdio_priv {
+	struct regmap *regmap;
+	struct mutex lock; /* protect HW access */
+	DECLARE_BITMAP(valid_ports, MAX_PORTS);
+	u8 smi_bus[MAX_PORTS];
+	u8 smi_addr[MAX_PORTS];
+	bool smi_bus_is_c45[MAX_SMI_BUSSES];
+	struct mii_bus *bus[MAX_SMI_BUSSES];
+};
+
+struct rtl9300_mdio_chan {
+	struct rtl9300_mdio_priv *priv;
+	u8 mdio_bus;
+};
+
+static int rtl9300_mdio_phy_to_port(struct mii_bus *bus, int phy_id)
+{
+	struct rtl9300_mdio_chan *chan =3D bus->priv;
+	struct rtl9300_mdio_priv *priv =3D chan->priv;
+	int i;
+
+	for (i =3D find_first_bit(priv->valid_ports, MAX_PORTS);
+	     i < MAX_PORTS;
+	     i =3D find_next_bit(priv->valid_ports, MAX_PORTS, i + 1))
+		if (priv->smi_bus[i] =3D=3D chan->mdio_bus &&
+		    priv->smi_addr[i] =3D=3D phy_id)
+			return i;
+
+	return -ENOENT;
+}
+
+static int rtl9300_mdio_wait_ready(struct rtl9300_mdio_priv *priv)
+{
+	struct regmap *regmap =3D priv->regmap;
+	u32 val;
+
+	lockdep_assert_held(&priv->lock);
+
+	return regmap_read_poll_timeout(regmap, SMI_ACCESS_PHY_CTRL_1,
+					val, !(val & PHY_CTRL_CMD), 10, 1000);
+}
+
+static int rtl9300_mdio_read_c22(struct mii_bus *bus, int phy_id, int re=
gnum)
+{
+	struct rtl9300_mdio_chan *chan =3D bus->priv;
+	struct rtl9300_mdio_priv *priv =3D chan->priv;
+	struct regmap *regmap =3D priv->regmap;
+	int port;
+	u32 val;
+	int err;
+
+	guard(mutex)(&priv->lock);
+
+	port =3D rtl9300_mdio_phy_to_port(bus, phy_id);
+	if (port < 0)
+		return port;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_2, port << 16);
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(24, 20), regnum) |
+	      FIELD_PREP(GENMASK(19, 15), 0x1f) |
+	      FIELD_PREP(GENMASK(14, 3), 0xfff) |
+	      PHY_CTRL_READ | PHY_CTRL_TYPE_C22 | PHY_CTRL_CMD;
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_1, val);
+	if (err)
+		return err;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	err =3D regmap_read(regmap, SMI_ACCESS_PHY_CTRL_2, &val);
+	if (err)
+		return err;
+
+	return FIELD_GET(GENMASK(15, 0), val);
+}
+
+static int rtl9300_mdio_write_c22(struct mii_bus *bus, int phy_id, int r=
egnum, u16 value)
+{
+	struct rtl9300_mdio_chan *chan =3D bus->priv;
+	struct rtl9300_mdio_priv *priv =3D chan->priv;
+	struct regmap *regmap =3D priv->regmap;
+	int port;
+	u32 val;
+	int err;
+
+	guard(mutex)(&priv->lock);
+
+	port =3D rtl9300_mdio_phy_to_port(bus, phy_id);
+	if (port < 0)
+		return port;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_0, BIT(port));
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_2, value << 16);
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(24, 20), regnum) |
+	      FIELD_PREP(GENMASK(19, 15), 0x1f) |
+	      FIELD_PREP(GENMASK(14, 3), 0xfff) |
+	      PHY_CTRL_WRITE | PHY_CTRL_TYPE_C22 | PHY_CTRL_CMD;
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_1, val);
+	if (err)
+		return err;
+
+	err =3D regmap_read_poll_timeout(regmap, SMI_ACCESS_PHY_CTRL_1,
+				       val, !(val & PHY_CTRL_CMD), 10, 100);
+	if (err)
+		return err;
+
+	if (val & PHY_CTRL_FAIL)
+		return -ENXIO;
+
+	return 0;
+}
+
+static int rtl9300_mdio_read_c45(struct mii_bus *bus, int phy_id, int de=
v_addr, int regnum)
+{
+	struct rtl9300_mdio_chan *chan =3D bus->priv;
+	struct rtl9300_mdio_priv *priv =3D chan->priv;
+	struct regmap *regmap =3D priv->regmap;
+	int port;
+	u32 val;
+	int err;
+
+	guard(mutex)(&priv->lock);
+
+	port =3D rtl9300_mdio_phy_to_port(bus, phy_id);
+	if (port < 0)
+		return port;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(31, 16), port);
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_2, val);
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(20, 16), dev_addr) |
+	      FIELD_PREP(GENMASK(15, 0), regnum);
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_3, val);
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_1,
+			   PHY_CTRL_READ | PHY_CTRL_TYPE_C45 | PHY_CTRL_CMD);
+	if (err)
+		return err;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	err =3D regmap_read(regmap, SMI_ACCESS_PHY_CTRL_2, &val);
+	if (err)
+		return err;
+
+	return FIELD_GET(GENMASK(15, 0), val);
+}
+
+static int rtl9300_mdio_write_c45(struct mii_bus *bus, int phy_id, int d=
ev_addr,
+				  int regnum, u16 value)
+{
+	struct rtl9300_mdio_chan *chan =3D bus->priv;
+	struct rtl9300_mdio_priv *priv =3D chan->priv;
+	struct regmap *regmap =3D priv->regmap;
+	int port;
+	u32 val;
+	int err;
+
+	guard(mutex)(&priv->lock);
+
+	port =3D rtl9300_mdio_phy_to_port(bus, phy_id);
+	if (port < 0)
+		return port;
+
+	err =3D rtl9300_mdio_wait_ready(priv);
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_0, BIT(port));
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(31, 16), value);
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_2, val);
+	if (err)
+		return err;
+
+	val =3D FIELD_PREP(GENMASK(20, 16), dev_addr) |
+	      FIELD_PREP(GENMASK(15, 0), regnum);
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_3, val);
+	if (err)
+		return err;
+
+	err =3D regmap_write(regmap, SMI_ACCESS_PHY_CTRL_1,
+			   PHY_CTRL_TYPE_C45 | PHY_CTRL_WRITE | PHY_CTRL_CMD);
+	if (err)
+		return err;
+
+	err =3D regmap_read_poll_timeout(regmap, SMI_ACCESS_PHY_CTRL_1,
+				       val, !(val & PHY_CTRL_CMD), 10, 100);
+	if (err)
+		return err;
+
+	if (val & PHY_CTRL_FAIL)
+		return -ENXIO;
+
+	return 0;
+}
+
+static int rtl9300_mdiobus_init(struct rtl9300_mdio_priv *priv)
+{
+	u32 glb_ctrl_mask =3D 0, glb_ctrl_val =3D 0;
+	struct regmap *regmap =3D priv->regmap;
+	u32 port_addr[5] =3D { 0 };
+	u32 poll_sel[2] =3D { 0 };
+	int i, err;
+
+	/* Associate the port with the SMI interface and PHY */
+	for (i =3D find_first_bit(priv->valid_ports, MAX_PORTS);
+	     i < MAX_PORTS;
+	     i =3D find_next_bit(priv->valid_ports, MAX_PORTS, i + 1)) {
+		int pos;
+
+		pos =3D (i % 6) * 5;
+		port_addr[i / 6] |=3D (priv->smi_addr[i] & 0x1f) << pos;
+
+		pos =3D (i % 16) * 2;
+		poll_sel[i / 16] |=3D (priv->smi_bus[i] & 0x3) << pos;
+	}
+
+	/* Put the interfaces into C45 mode if required */
+	glb_ctrl_mask =3D GENMASK(19, 16);
+	for (i =3D 0; i < MAX_SMI_BUSSES; i++)
+		if (priv->smi_bus_is_c45[i])
+			glb_ctrl_val |=3D GLB_CTRL_INTF_SEL(i);
+
+	err =3D regmap_bulk_write(regmap, SMI_PORT0_5_ADDR_CTRL,
+				port_addr, 5);
+	if (err)
+		return err;
+
+	err =3D regmap_bulk_write(regmap, SMI_PORT0_15_POLLING_SEL,
+				poll_sel, 2);
+	if (err)
+		return err;
+
+	err =3D regmap_update_bits(regmap, SMI_GLB_CTRL,
+				 glb_ctrl_mask, glb_ctrl_val);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int rtl9300_mdiobus_probe_one(struct device *dev, struct rtl9300_=
mdio_priv *priv,
+				     struct fwnode_handle *node)
+{
+	struct rtl9300_mdio_chan *chan;
+	struct fwnode_handle *child;
+	struct mii_bus *bus;
+	u32 mdio_bus;
+	int err;
+
+	err =3D fwnode_property_read_u32(node, "reg", &mdio_bus);
+	if (err)
+		return err;
+
+	fwnode_for_each_child_node(node, child)
+		if (fwnode_device_is_compatible(child, "ethernet-phy-ieee802.3-c45"))
+			priv->smi_bus_is_c45[mdio_bus] =3D true;
+
+	bus =3D devm_mdiobus_alloc_size(dev, sizeof(*chan));
+	if (!bus)
+		return -ENOMEM;
+
+	bus->name =3D "Reaktek Switch MDIO Bus";
+	bus->read =3D rtl9300_mdio_read_c22;
+	bus->write =3D rtl9300_mdio_write_c22;
+	bus->read_c45 =3D rtl9300_mdio_read_c45;
+	bus->write_c45 =3D  rtl9300_mdio_write_c45;
+	bus->parent =3D dev;
+	chan =3D bus->priv;
+	chan->mdio_bus =3D mdio_bus;
+	chan->priv =3D priv;
+
+	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-%d", dev_name(dev), mdio_bus);
+
+	err =3D devm_of_mdiobus_register(dev, bus, to_of_node(node));
+	if (err)
+		return dev_err_probe(dev, err, "cannot register MDIO bus\n");
+
+	return 0;
+}
+
+/* The mdio-controller is part of a switch block so we parse the sibling
+ * ethernet-ports node and build a mapping of the switch port to MDIO bu=
s/addr
+ * based on the phy-handle.
+ */
+static int rtl9300_mdiobus_map_ports(struct device *dev)
+{
+	struct rtl9300_mdio_priv *priv =3D dev_get_drvdata(dev);
+	struct device *parent =3D dev->parent;
+	struct fwnode_handle *port;
+	int err;
+
+	struct fwnode_handle *ports __free(fwnode_handle) =3D
+		device_get_named_child_node(parent, "ethernet-ports");
+	if (!ports)
+		return dev_err_probe(dev, -EINVAL, "%pfwP missing ethernet-ports\n",
+				     dev_fwnode(parent));
+
+	fwnode_for_each_child_node(ports, port) {
+		struct device_node *mdio_dn;
+		u32 addr;
+		u32 bus;
+		u32 pn;
+
+		struct device_node *phy_dn __free(device_node) =3D
+			of_parse_phandle(to_of_node(port), "phy-handle", 0);
+		/* skip ports without phys */
+		if (!phy_dn)
+			continue;
+
+		mdio_dn =3D phy_dn->parent;
+		/* only map ports that are connected to this mdio-controller */
+		if (mdio_dn->parent !=3D dev->of_node)
+			continue;
+
+		err =3D fwnode_property_read_u32(port, "reg", &pn);
+		if (err)
+			return err;
+
+		if (pn >=3D MAX_PORTS)
+			return dev_err_probe(dev, -EINVAL, "illegal port number %d\n", pn);
+
+		err =3D of_property_read_u32(mdio_dn, "reg", &bus);
+		if (err)
+			return err;
+
+		if (bus >=3D MAX_SMI_BUSSES)
+			return dev_err_probe(dev, -EINVAL, "illegal smi bus number %d\n", bus=
);
+
+		err =3D of_property_read_u32(phy_dn, "reg", &addr);
+		if (err)
+			return err;
+
+		bitmap_set(priv->valid_ports, pn, 1);
+		priv->smi_bus[pn] =3D bus;
+		priv->smi_addr[pn] =3D addr;
+	}
+
+	return 0;
+}
+
+static int rtl9300_mdiobus_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct rtl9300_mdio_priv *priv;
+	struct fwnode_handle *child;
+	int err;
+
+	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	err =3D devm_mutex_init(dev, &priv->lock);
+	if (err)
+		return err;
+
+	priv->regmap =3D syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(priv->regmap))
+		return PTR_ERR(priv->regmap);
+
+	platform_set_drvdata(pdev, priv);
+
+	err =3D rtl9300_mdiobus_map_ports(dev);
+	if (err)
+		return err;
+
+	device_for_each_child_node(dev, child) {
+		err =3D rtl9300_mdiobus_probe_one(dev, priv, child);
+		if (err)
+			return err;
+	}
+
+	err =3D rtl9300_mdiobus_init(priv);
+	if (err)
+		return dev_err_probe(dev, err, "failed to initialise MDIO bus controll=
er\n");
+
+	return 0;
+}
+
+static const struct of_device_id rtl9300_mdio_ids[] =3D {
+	{ .compatible =3D "realtek,rtl9301-mdio" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, rtl9300_mdio_ids);
+
+static struct platform_driver rtl9300_mdio_driver =3D {
+	.probe =3D rtl9300_mdiobus_probe,
+	.driver =3D {
+		.name =3D "mdio-rtl9300",
+		.of_match_table =3D rtl9300_mdio_ids,
+	},
+};
+
+module_platform_driver(rtl9300_mdio_driver);
+
+MODULE_DESCRIPTION("RTL9300 MDIO driver");
+MODULE_LICENSE("GPL");
--=20
2.48.1


