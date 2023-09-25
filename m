Return-Path: <devicetree+bounces-3290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 746627AE1F8
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 00:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D74EB281732
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 22:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E1323779;
	Mon, 25 Sep 2023 22:57:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F2B224E9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 22:57:18 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1CC810C;
	Mon, 25 Sep 2023 15:57:15 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38PMjvcC001796;
	Mon, 25 Sep 2023 22:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=DSjRjYkmB7BUFVNAKJ4xYkcEzmZhEXiK8XKFZovjGcU=;
 b=H8NTLX4+J0Nvfambodg6NzHsKmqLb6SVSMnzWbnukSQyPGxZSJtchJ/bO1Ee/QzDBvMi
 LhtPQNhLKozmaK0QRRtuDhLSe6VJGz7/BjiEQ0p/IjxwTB3mWo5CtQVpGC4P0Ui9/w9+
 1XxaxeDRhqt6w2kxgTJIGbypLp29Jpwz3uZY0gnP4FnjXpBzhEZ2haJLeggOKd+B8s7J
 qpaNBpdL2SAQ30l3twHfcmc2YWHYf3EyAIS4Pz/OLLWW7XDVh1Ult3KIkn0XIb/8fyOJ
 zyDRhi4zr8VtXLSbQoEuGaDAFdF1ewZp2o0OCuhS9OAPYO2N5bZD5h6yQB06w4HrRQow 9A== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tb5n8a2kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 22:57:02 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38PMv14c010258
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 22:57:01 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Mon, 25 Sep 2023 15:57:01 -0700
Date: Mon, 25 Sep 2023 15:57:00 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Om Prakash Singh <quic_omprsing@quicinc.com>
CC: <neil.armstrong@linaro.org>, <konrad.dybcio@linaro.org>,
        <agross@kernel.org>, <andersson@kernel.org>, <conor+dt@kernel.org>,
        <davem@davemloft.net>, <devicetree@vger.kernel.org>,
        <herbert@gondor.apana.org.au>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <marijn.suijten@somainline.org>,
        <robh+dt@kernel.org>, <vkoul@kernel.org>
Subject: Re: [PATCH V3] crypto: qcom-rng - Add hw_random interface support
Message-ID: <20230925225700.GC437346@hu-bjorande-lv.qualcomm.com>
References: <20230925172312.2843262-1-quic_omprsing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230925172312.2843262-1-quic_omprsing@quicinc.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZuTC_JaemTshKClJTMs3DsKAeZpgi9uV
X-Proofpoint-GUID: ZuTC_JaemTshKClJTMs3DsKAeZpgi9uV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_18,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 mlxlogscore=998 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309250177
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 10:53:12PM +0530, Om Prakash Singh wrote:
> From: Om Prakash Singh <omprsing@qti.qualcomm.com>

That is not a valid email address here, please correct this.

> 
> Add hw_random interface support in qcom-rng driver as new IP block
> in Qualcomm SoC has inbuilt NIST SP800 90B compliant entropic source
> to generate true random number.
> 
> Keeping current rng_alg interface as well for random number generation
> using Kernel Crypto API.
> 
> Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>
[..]
> diff --git a/drivers/crypto/qcom-rng.c b/drivers/crypto/qcom-rng.c
[..]
> +static int qcom_hwrng_read(struct hwrng *hwrng, void *data, size_t max, bool wait)
> +{
> +	struct qcom_rng *qrng =  container_of(hwrng, struct qcom_rng, hwrng);

Please also remove one of the spaces after '='.


Other than that, this looks good to me.

Regards,
Bjorn

