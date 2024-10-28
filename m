Return-Path: <devicetree+bounces-116482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F8E9B306E
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B2EE1F222A7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D771DAC8C;
	Mon, 28 Oct 2024 12:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="NTywEJjz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A01DA605;
	Mon, 28 Oct 2024 12:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119041; cv=none; b=hZaHUY/p4kq6qqtbCQyDXKy2yoT3m+nV3vH3a7YkhI85Eaq51uJVopNFJrR4L1y7REvhwoABHFUbesyzTk3mwPMfCdkujz0buLTWN3EeUNVivPk7SwEJUC5dQKvFbWINMrSpKlvBkEpEV6gZfzlQRFaInKGy4PsuoYmx4KPsK4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119041; c=relaxed/simple;
	bh=cnyLPSOq7DGljW1uTfcphz8QoPJc+CoMIScpNW80yW0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Qr9+VpM91hNf/GGdDgt9MJAJpi3cBmuaKYA/L3gXFc5PEaQYrEW2CKdsRgXpVUzEF/ewBGip4543rxbcmCoDNOTlnbcvg59XMJPlP8L0I0BiF59RSBL3nSgtrj5pYpLxu+u577ATiC6dkLId84DuuIfMEYQgQXJGLNIq+oe9Vbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=NTywEJjz; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SBFa9j024726;
	Mon, 28 Oct 2024 08:37:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=qowKV
	pCwVPojh3CRqsH4wISc/5CjTZJDt1qXcmHojsw=; b=NTywEJjzO/UBP8z6I+TJr
	SPaN7KLv/rJWXT9oPKcl575zBKUHZ7Ssf6umuw7uVdXsQFx/Sygk0YfoS4tWwSzu
	0IELlvSPtakg1xgaxlIc3z8ruT6gFhvWaLD7Bn0ERReOCvGf60HVPDViOVdEmpjw
	kNMNftJtA2TeOgg0RjblMpJZT05QXiImqRnJdSO9g0/4o1ZR4n8OtgFMmU6GD0Fm
	piksxt2GLVSMQN2/T3ODIoROOTysEAFHsrebxsgePXUgSg9ccZ1QV1cjQ/kb3zrW
	8rGTzAM0+sOSf2dh/fM1xvlAWXWoH2+2TY2KPkyGOkDk+hDx4ru8j6degtXa3bIi
	g==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 42j9k5ga9t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 28 Oct 2024 08:37:02 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 49SCb128062338
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 28 Oct 2024 08:37:01 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 28 Oct 2024 08:37:01 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 28 Oct 2024 08:37:01 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Mon, 28 Oct 2024 08:37:01 -0400
Received: from dell-precision-robert.ad.analog.com ([10.48.65.123])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 49SCZxiD026416;
	Mon, 28 Oct 2024 08:36:51 -0400
From: Robert Budai <robert.budai@analog.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Nuno Sa <nuno.sa@analog.com>,
        "Ramona
 Gradinariu" <ramona.gradinariu@analog.com>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        Jonathan Cameron <jic23@kernel.org>, "Rob
 Herring" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Robert Budai
	<robert.budai@analog.com>,
        Jagath Jog J <jagathjog1996@gmail.com>, <linux-iio@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-doc@vger.kernel.org>
CC: <robi_budai@yahoo.com>
Subject: [PATCH 5/5] docs: iio: add documentation for adis16550 driver
Date: Mon, 28 Oct 2024 14:35:45 +0200
Message-ID: <20241028123550.9128-4-robert.budai@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028123550.9128-1-robert.budai@analog.com>
References: <20241028123550.9128-1-robert.budai@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="y"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: jqT9omaeqWelJ5DZdgaoraziJ5T5LigM
X-Proofpoint-ORIG-GUID: jqT9omaeqWelJ5DZdgaoraziJ5T5LigM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 spamscore=0 mlxscore=0 suspectscore=0 clxscore=1015 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410280102

From: Ramona Gradinariu <ramona.gradinariu@analog.com>

Add documentation for adis16550 driver which describes the driver
device files and shows how the user may use the ABI for various
scenarios (configuration, measurement, etc.).

Co-developed-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
---
 Documentation/iio/adis16550.rst | 389 ++++++++++++++++++++++++++++++++
 Documentation/iio/index.rst     |   1 +
 2 files changed, 390 insertions(+)
 create mode 100644 Documentation/iio/adis16550.rst

diff --git a/Documentation/iio/adis16550.rst b/Documentation/iio/adis16550.rst
new file mode 100644
index 000000000000..fde38060f8fe
--- /dev/null
+++ b/Documentation/iio/adis16550.rst
@@ -0,0 +1,389 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+================
+ADIS16550 driver
+================
+
+This driver supports Analog Device's IMUs on SPI bus.
+
+1. Supported devices
+====================
+
+* `ADIS16550 <https://www.analog.com/ADIS16550>`_
+
+The ADIS16550 is a complete inertial system that includes a triaxis gyroscope
+and a triaxis accelerometer. Each inertial sensor in the ADIS16550 combines
+industry leading MEMS only technology with signal conditioning that optimizes
+dynamic performance. The factory calibration characterizes each sensor for
+sensitivity, bias, and alignment. As a result, each sensor has its own dynamic
+compensation formulas that provide accurate sensor measurements.
+
+The ADIS16550 provides a simple, cost-effective method for integrating accurate,
+multiaxis inertial sensing into industrial systems, especially when compared
+with the complexity and investment associated with discrete designs. All
+necessary motion testing and calibration are part of the production process at
+the factory, greatly reducing system integration time. Tight orthogonal
+alignment simplifies inertial frame alignment in navigation systems. The serial
+peripheral interface (SPI) and register structure provide a simple interface for
+data collection and configuration control.
+
+2. Device attributes
+====================
+
+Accelerometer, gyroscope measurements are always provided. Furthermore, the
+driver offers the capability to retrieve the delta angle and the delta velocity
+measurements computed by the device.
+
+The delta angle measurements represent a calculation of angular displacement
+between each sample update, while the delta velocity measurements represent a
+calculation of linear velocity change between each sample update.
+
+Finally, temperature data are provided which show a coarse measurement of
+the temperature inside of the IMU device. This data is most useful for
+monitoring relative changes in the thermal environment.
+
+Each IIO device, has a device folder under ``/sys/bus/iio/devices/iio:deviceX``,
+where X is the IIO index of the device. Under these folders reside a set of
+device files, depending on the characteristics and features of the hardware
+device in questions. These files are consistently generalized and documented in
+the IIO ABI documentation.
+
+The following tables show the adis16550 related device files, found in the
+specific device folder path ``/sys/bus/iio/devices/iio:deviceX``.
+
++-------------------------------------------+----------------------------------------------------------+
+| 3-Axis Accelerometer related device files | Description                                              |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_scale                            | Scale for the accelerometer channels.                    |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_filter_low_pass_3db_frequency    | Bandwidth for the accelerometer channels.                |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_x_calibbias                      | Calibration offset for the X-axis accelerometer channel. |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_x_calibscale                     | Calibration scale for the X-axis accelerometer channel.  |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_x_raw                            | Raw X-axis accelerometer channel value.                  |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_y_calibbias                      | Calibration offset for the Y-axis accelerometer channel. |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_y_calibscale                     | Calibration scale for the Y-axis accelerometer channel.  |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_y_raw                            | Raw Y-axis accelerometer channel value.                  |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_z_calibbias                      | Calibration offset for the Z-axis accelerometer channel. |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_z_calibscale                     | Calibration scale for the Z-axis accelerometer channel.  |
++-------------------------------------------+----------------------------------------------------------+
+| in_accel_z_raw                            | Raw Z-axis accelerometer channel value.                  |
++-------------------------------------------+----------------------------------------------------------+
+| in_deltavelocity_scale                    | Scale for delta velocity channels.                       |
++-------------------------------------------+----------------------------------------------------------+
+| in_deltavelocity_x_raw                    | Raw X-axis delta velocity channel value.                 |
++-------------------------------------------+----------------------------------------------------------+
+| in_deltavelocity_y_raw                    | Raw Y-axis delta velocity channel value.                 |
++-------------------------------------------+----------------------------------------------------------+
+| in_deltavelocity_z_raw                    | Raw Z-axis delta velocity channel value.                 |
++-------------------------------------------+----------------------------------------------------------+
+
++--------------------------------------------+------------------------------------------------------+
+| 3-Axis Gyroscope related device files      | Description                                          |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_scale                           | Scale for the gyroscope channels.                    |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_filter_low_pass_3db_frequency   | Scale for the gyroscope channels.                    |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_x_calibbias                     | Calibration offset for the X-axis gyroscope channel. |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_x_calibscale                    | Calibration scale for the X-axis gyroscope channel.  |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_x_raw                           | Raw X-axis gyroscope channel value.                  |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_y_calibbias                     | Calibration offset for the Y-axis gyroscope channel. |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_y_calibscale                    | Calibration scale for the Y-axis gyroscope channel.  |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_y_raw                           | Raw Y-axis gyroscope channel value.                  |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_z_calibbias                     | Calibration offset for the Z-axis gyroscope channel. |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_z_calibscale                    | Calibration scale for the Z-axis gyroscope channel.  |
++--------------------------------------------+------------------------------------------------------+
+| in_anglvel_z_raw                           | Raw Z-axis gyroscope channel value.                  |
++--------------------------------------------+------------------------------------------------------+
+| in_deltaangl_scale                         | Scale for delta angle channels.                      |
++--------------------------------------------+------------------------------------------------------+
+| in_deltaangl_x_raw                         | Raw X-axis delta angle channel value.                |
++--------------------------------------------+------------------------------------------------------+
+| in_deltaangl_y_raw                         | Raw Y-axis delta angle channel value.                |
++--------------------------------------------+------------------------------------------------------+
+| in_deltaangl_z_raw                         | Raw Z-axis delta angle channel value.                |
++--------------------------------------------+------------------------------------------------------+
+
++----------------------------------+-------------------------------------------+
+| Temperature sensor related files | Description                               |
++----------------------------------+-------------------------------------------+
+| in_temp0_raw                     | Raw temperature channel value.            |
++----------------------------------+-------------------------------------------+
+| in_temp0_offset                  | Offset for the temperature sensor channel.|
++----------------------------------+-------------------------------------------+
+| in_temp0_scale                   | Scale for the temperature sensor channel. |
++----------------------------------+-------------------------------------------+
+
++----------------------------+--------------------------------------------------------------------------------+
+| Miscellaneous device files | Description                                                                    |
++----------------------------+--------------------------------------------------------------------------------+
+| name                       | Name of the IIO device.                                                        |
++----------------------------+--------------------------------------------------------------------------------+
+| sampling_frequency         | Currently selected sample rate.                                                |
++----------------------------+--------------------------------------------------------------------------------+
+| write_lock_enable          | Lock the device from further configuration. Only a reset will remove the lock. |
++----------------------------+--------------------------------------------------------------------------------+
+
+The following table shows the adis16550 related device debug files, found in the
+specific device debug folder path ``/sys/kernel/debug/iio/iio:deviceX``.
+
++----------------------+-------------------------------------------------------------------------+
+| Debugfs device files | Description                                                             |
++----------------------+-------------------------------------------------------------------------+
+| serial_number        | The serial number of the chip in hexadecimal format.                    |
++----------------------+-------------------------------------------------------------------------+
+| product_id           | Chip specific product id (16550).                                       |
++----------------------+-------------------------------------------------------------------------+
+| flash_count          | The number of flash writes performed on the device.                     |
++----------------------+-------------------------------------------------------------------------+
+| firmware_revision    | String containing the firmware revision in the following format ##.##.  |
++----------------------+-------------------------------------------------------------------------+
+| firmware_date        | String containing the firmware date in the following format mm-dd-yyyy. |
++----------------------+-------------------------------------------------------------------------+
+
+Channels processed values
+-------------------------
+
+A channel value can be read from its _raw attribute. The value returned is the
+raw value as reported by the devices. To get the processed value of the channel,
+apply the following formula:
+
+.. code-block:: bash
+
+        processed value = (_raw + _offset) * _scale
+
+Where _offset and _scale are device attributes. If no _offset attribute is
+present, simply assume its value is 0.
+
+The adis16550 driver offers data for 5 types of channels, the table below shows
+the measurement units for the processed value, which are defined by the IIO
+framework:
+
++--------------------------------------+---------------------------+
+| Channel type                         | Measurement unit          |
++--------------------------------------+---------------------------+
+| Acceleration on X, Y, and Z axis     | Meters per Second squared |
++--------------------------------------+---------------------------+
+| Angular velocity on X, Y and Z axis  | Radians per second        |
++--------------------------------------+---------------------------+
+| Delta velocity on X. Y, and Z axis   | Meters per Second         |
++--------------------------------------+---------------------------+
+| Delta angle on X, Y, and Z axis      | Radians                   |
++--------------------------------------+---------------------------+
+| Temperature                          | Millidegrees Celsius      |
++--------------------------------------+---------------------------+
+
+Usage examples
+--------------
+
+Show device name:
+
+.. code-block:: bash
+
+	root:/sys/bus/iio/devices/iio:device0> cat name
+        adis16550
+
+Show accelerometer channels value:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_x_raw
+        6903851
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_y_raw
+        5650550
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_z_raw
+        104873530
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_scale
+        0.000000095
+
+- X-axis acceleration = in_accel_x_raw * in_accel_scale = 0.655865845 m/s^2
+- Y-axis acceleration = in_accel_y_raw * in_accel_scale = 0.53680225 m/s^2
+- Z-axis acceleration = in_accel_z_raw * in_accel_scale = 9.96298535 m/s^2
+
+Show gyroscope channels value:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_x_raw
+        193309
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_y_raw
+        -763676
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_z_raw
+        -358108
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_scale
+        0.000000003
+
+- X-axis angular velocity = in_anglvel_x_raw * in_anglvel_scale = 0.000579927 rad/s
+- Y-axis angular velocity = in_anglvel_y_raw * in_anglvel_scale = −0.002291028 rad/s
+- Z-axis angular velocity = in_anglvel_z_raw * in_anglvel_scale = −0.001074324 rad/s
+
+Set calibration offset for accelerometer channels:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_x_calibbias
+        0
+
+        root:/sys/bus/iio/devices/iio:device0> echo 5000 > in_accel_x_calibbias
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_x_calibbias
+        5000
+
+Set calibration offset for gyroscope channels:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_y_calibbias
+        0
+
+        root:/sys/bus/iio/devices/iio:device0> echo -5000 > in_anglvel_y_calibbias
+        root:/sys/bus/iio/devices/iio:device0> cat in_anglvel_y_calibbias
+        -5000
+
+Set sampling frequency:
+
+.. code-block:: bash
+
+	root:/sys/bus/iio/devices/iio:device0> cat sampling_frequency
+        4000.000000
+
+        root:/sys/bus/iio/devices/iio:device0> echo 1000 > sampling_frequency
+        1000.000000
+
+Set bandwidth for accelerometer channels:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_filter_low_pass_3db_frequency
+        0
+
+        root:/sys/bus/iio/devices/iio:device0> echo 100 > in_accel_filter_low_pass_3db_frequency
+        root:/sys/bus/iio/devices/iio:device0> cat in_accel_filter_low_pass_3db_frequency
+        100
+
+Show serial number:
+
+.. code-block:: bash
+
+        root:/sys/kernel/debug/iio/iio:device0> cat serial_number
+        0x000000b6
+
+Show product id:
+
+.. code-block:: bash
+
+        root:/sys/kernel/debug/iio/iio:device0> cat product_id
+        16550
+
+Show flash count:
+
+.. code-block:: bash
+
+        root:/sys/kernel/debug/iio/iio:device0> cat flash_count
+        13
+
+Show firmware revision:
+
+.. code-block:: bash
+
+        root:/sys/kernel/debug/iio/iio:device0> cat firmware_revision
+        1.5
+
+Show firmware date:
+
+.. code-block:: bash
+
+        root:/sys/kernel/debug/iio/iio:device0> cat firmware_date
+        28-04-2021
+
+3. Device buffers
+=================
+
+This driver supports IIO buffers.
+
+The device supports retrieving the raw acceleration, gyroscope, delta velocity,
+delta angle and temperature measurements using buffers.
+
+However, when retrieving acceleration or gyroscope data using buffers, delta
+readings will not be available and vice versa. This is because the device only
+allows to read either acceleration and gyroscope data or delta velocity and
+delta angle data at a time and switching between these two burst data selection
+modes is time consuming.
+
+Usage examples
+--------------
+
+Set device trigger in current_trigger, if not already set:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> cat trigger/current_trigger
+
+        root:/sys/bus/iio/devices/iio:device0> echo adis16550-dev0 > trigger/current_trigger
+        root:/sys/bus/iio/devices/iio:device0> cat trigger/current_trigger
+        adis16550-dev0
+
+Select channels for buffer read:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> echo 1 > scan_elements/in_deltavelocity_x_en
+        root:/sys/bus/iio/devices/iio:device0> echo 1 > scan_elements/in_deltavelocity_y_en
+        root:/sys/bus/iio/devices/iio:device0> echo 1 > scan_elements/in_deltavelocity_z_en
+        root:/sys/bus/iio/devices/iio:device0> echo 1 > scan_elements/in_temp0_en
+
+Set the number of samples to be stored in the buffer:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> echo 10 > buffer/length
+
+Enable buffer readings:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> echo 1 > buffer/enable
+
+Obtain buffered data:
+
+.. code-block:: bash
+
+        root:/sys/bus/iio/devices/iio:device0> hexdump -C /dev/iio\:device0
+        ...
+        0000cdf0  00 00 0d 2f 00 00 08 43  00 00 09 09 00 00 a4 5f  |.../...C......._|
+        0000ce00  00 00 0d 2f 00 00 07 de  00 00 08 db 00 00 a4 4b  |.../...........K|
+        0000ce10  00 00 0d 2f 00 00 07 58  00 00 08 a3 00 00 a4 55  |.../...X.......U|
+        0000ce20  00 00 0d 2f 00 00 06 d6  00 00 08 5c 00 00 a4 62  |.../.......\...b|
+        0000ce30  00 00 0d 2f 00 00 06 45  00 00 08 37 00 00 a4 47  |.../...E...7...G|
+        0000ce40  00 00 0d 2f 00 00 05 d4  00 00 08 30 00 00 a3 fa  |.../.......0....|
+        0000ce50  00 00 0d 2f 00 00 05 d0  00 00 08 12 00 00 a3 d3  |.../............|
+        0000ce60  00 00 0d 2f 00 00 05 dd  00 00 08 2e 00 00 a3 e9  |.../............|
+        0000ce70  00 00 0d 2f 00 00 05 cc  00 00 08 51 00 00 a3 d5  |.../.......Q....|
+        0000ce80  00 00 0d 2f 00 00 05 ba  00 00 08 22 00 00 a3 9a  |.../......."....|
+        0000ce90  00 00 0d 2f 00 00 05 9c  00 00 07 d9 00 00 a3 40  |.../...........@|
+        0000cea0  00 00 0d 2f 00 00 05 68  00 00 07 94 00 00 a2 e4  |.../...h........|
+        0000ceb0  00 00 0d 2f 00 00 05 25  00 00 07 8d 00 00 a2 ce  |.../...%........|
+        ...
+
+See ``Documentation/iio/iio_devbuf.rst`` for more information about how buffered
+data is structured.
+
+4. IIO Interfacing Tools
+========================
+
+See ``Documentation/iio/iio_tools.rst`` for the description of the available IIO
+interfacing tools.
diff --git a/Documentation/iio/index.rst b/Documentation/iio/index.rst
index dfcf9618568a..03829b2de2c0 100644
--- a/Documentation/iio/index.rst
+++ b/Documentation/iio/index.rst
@@ -24,6 +24,7 @@ Industrial I/O Kernel Drivers
    ad7944
    adis16475
    adis16480
+   adis16550
    adxl380
    bno055
    ep93xx_adc
-- 
2.34.1


